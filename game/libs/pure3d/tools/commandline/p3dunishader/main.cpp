/*===========================================================================
    File: main.cpp 

    This tool create unique shader for meshes


    Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <toollib.hpp>

#include "Param.hpp"

struct ShaderStatus{
     char name[ 128 ];
     unsigned int  dirty;
};

Parameters* Param;

void CheckShaderDuplication( const char *shaderName, tlTable<ShaderStatus *> &shaderUsage, int & num )
{
     num = 0;
     for( int i = 0; i < shaderUsage.Count( ); ++i ){
          if( strcmp( shaderName, shaderUsage[ i ]->name ) == 0 ){
                num = shaderUsage[ i ]->dirty;
                ++shaderUsage[ i ]->dirty;
          }
     }

}

tlShader * FindShader( const char *shaderName, tlTable<tlShader *> shaders )
{
    for( int i = 0; i < shaders.Count( ); ++i ){
          if( strcmp( shaderName, shaders[ i ]->GetName( ) ) == 0 ){
                return shaders[ i ];            
          }
     }   

     return NULL;
}

bool IsLightMapped( tlShader & shader )
{
     const char * type =  shader.GetShaderType( );

     if( strcmp( type, "simple" ) == 0 || strcmp( type, "layered" ) == 0 ){
          if( shader.GetIntParam( tlFourCC( "PLMD" ) )  == 2 )
                return true;
     }

     return false;
}

int main(int argc, char* argv[])
{
    // the constructor of this class processes command-line
    // parameters
    Param = new Parameters(argc,argv);

    tlDataChunk::RegisterDefaultChunks();

    // for each file on the command-line, do the following:
    for(int i = 0; i < Param->Files.Count(); i++) 
    {
        if ( Param->Verbosity > 0 )
        {
            printf("Processing file '%s'\n", Param->Files[ i ]);
        }
        // open next file into a tlFile object
        tlFile input(new tlFileByteStream(Param->Files[ i ],omREAD), tlFile::FROMFILE);
        if(!input.IsOpen()) 
        {
            printf("Could not open %s\n", Param->Files[ i ]);
            exit(-1);
        }

        // make a tlDataChunk from the file
        // this is the wrapper chunk for the input
        tlDataChunk* inchunk = new tlDataChunk(&input);

        // we don't need the tlFile anymore
        // this cleans up the tlFile object including the
        // tlFileByteStream
        input.Close();

        if(Param->Verbosity>6)
        {
            inchunk->Print();
        }

        // build an output chunk
        tlDataChunk* outchunk = new tlDataChunk;
        if(Param->WriteHistory)
        {
            // put a history chunk in the output
            // a history chunk shows what version of the tool
            // was run on the file with what command-line 
            // parameters
            outchunk->AppendSubChunk(Param->HistoryChunk());
        }

        int ch;

        tlTable<ShaderStatus *> shaderUsage;
        tlTable<tlShader *>shaders;
        //collect all shaders
        for( ch = 0; ch < inchunk->SubChunkCount(); ch++){
          // create the next sub-chunk

            tlDataChunk* sub = inchunk->GetSubChunk(ch);

            // look at the id of the subchunk to decide if we 
            // want to do something with it or not
            switch(sub->ID())
            {
                 case Pure3D::Shader::SHADER :
                 {
                      tlShader shader( sub );
                      if( ( Param->LightMapShader && IsLightMapped( shader ) ) || Param->LightMapShader == 0 ){
                            ShaderStatus *status = new ShaderStatus;
                      
                            strcpy( status->name, shader.GetName( ) );
                            status->dirty = 0;
                            shaderUsage.Append( status );

                            tlShader * shader1 = new tlShader( sub );
                            shaders.Append( shader1 );
                      }
                 }
                 break;
            }

        }

        // go through all the sub-chunks of the input and
        // process the ones you care about
        for(ch=0; ch < inchunk->SubChunkCount(); ch++)
        {
            // create the next sub-chunk

            tlDataChunk* sub = inchunk->GetSubChunk(ch);

            // look at the id of the subchunk to decide if we 
            // want to do something with it or not
            switch(sub->ID())
            {
                //
                case Pure3D::Mesh::MESH:
                {
                     tlPrimGroupMesh mesh( sub );
                     const char * shaderName;

                     for( int i = 0; i < mesh.NumPrimGroups( ); ++i ){
                          tlPrimGroup *prm = mesh.GetPrimGroup( i );
                          shaderName = prm->GetShader( );
                          int num;

                          CheckShaderDuplication( shaderName, shaderUsage, num );
                          if( num > 0 ){
                                tlShader * shader = FindShader( shaderName, shaders );
                                tlShader *newShader = new tlShader( *shader );
                                char name[ 128 ];
                                sprintf( name, "%s_%d", shaderName, num );
                                newShader->SetName( name );
                                outchunk->AppendSubChunk( newShader->Chunk( ) );
                                delete newShader;

                                prm->SetShader( name );
                          }                
                     }
                     outchunk->AppendSubChunk( mesh.Chunk( ) );
                }
                break;

                default:

                    // this is not a chunk that we care about
                    // so simply copy it to the output wrapper chunk
                    // the optional parameter to AppendSubChunk
                    // indicates that we have merely copied a pointer
                    // so the destructor of outchunk should not
                    // destroy this sub-chunk as that duty will be
                    // taken care of by the destructor of inchunk
                    outchunk->AppendSubChunk(sub,FALSE);
                    break;
            }
        }

        if(Param->Verbosity>5)
        {
            outchunk->Print();
        }

        char buf[P3DMAXNAME];
        if(Param->OutputFile)
        {
            strcpy(buf,Param->OutputFile);
        } else {
            strcpy(buf,Param->Files[i]);
        }

        // create the new output file
        tlFile output(new tlFileByteStream(buf, omWRITE), tlFile::CHUNK32);

        if(!output.IsOpen()) 
        {
            printf("Could not open %s for writing\n", buf);
            exit(-1);
        }

        // get the output wrapper chunk to write its data out
        // to the file
        outchunk->Write(&output);

        // cleanup the no-longer-needed wrapper chunks
        delete inchunk;
        delete outchunk;

        int i;
        for(  i = 0; i < shaderUsage.Count( ); ++i )
             delete shaderUsage[ i ];

        for(  i = 0; i < shaders.Count( ); ++i )
             delete shaders[ i ];

    
    } // end of main for loop

    // Cleanup

    delete Param;
    return 0;
}
