/*===========================================================================
    Automatically generated by Jeeves, don't edit.  Edit p3dcompdrawopt.sc instead

    File: Param.cpp 

    Command line parameters for p3dcompdrawopt

   This tool optomized composite drawable an the associated skins and geometries

    Copyright (c) 2015 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "Param.hpp"
#include "toollib.hpp"
#include "version.hpp"

#include <constants\version.hpp>

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <getopt.h>
#include <time.h>

#ifdef P3DWIN95  
    #define WIN32_LEAN_AND_MEAN
    #define WIN32_EXTRA_LEAN
    #include <windows.h>
    #include <io.h>
#else
    #include <unistd.h>
#endif

Parameters::~Parameters()
{
    strdelete( OutputFile );
}

Parameters::Parameters(int argc, char* argv[]) :
    Files( )
{
    Argc = argc;
    Argv = argv;
    WriteHistory = TRUE;

    Recurse = false;
    isPattern = false;

    Verbosity = 0;
    int Hist = 0;

        OutputFile = NULL;
        SkinMerge  = FALSE;
        Wheels     = FALSE;

    char ch;
    
    int option_index = 0;
    static struct option long_options[] = {
      {"output-file",required_argument,NULL,0},
      {"skinmerge",no_argument,NULL,0},
      {"wheels",no_argument,NULL,0},
      {"help",no_argument,NULL,0},
      {0,0,0,0}
    };
    while ((ch = getopt_long(argc, argv, "?hHvVRP:no:sw",long_options,&option_index)) != EOF)
    {
        switch(ch)
        {
            // Handle the long arguments first
            case 0:
            switch(option_index)
            {
                case 0:   // output-file
                        OutputFile = strnew(optarg);
                    break;
                case 1:   // skinmerge
                    SkinMerge = TRUE;
                    break;
                case 2:   // wheels
                    Wheels = TRUE;
                    break;
                case 3:   // help
                    Usage();
                    break;
                default:
                    printf("ERROR! Bad index from getopt_long!\\n");
                    exit(-1);
            }
            break;
            
            // Now the short arguments
            case 's':
                SkinMerge = TRUE;
                break;
            case 'w':
                Wheels = TRUE;
                break;
            case 'o':
                OutputFile = strnew(optarg);
                break;
            case 'V':
                Verbosity+=100;
                break;
            case 'v':
                Verbosity++;
                break;
            case 'n':
                WriteHistory = FALSE;
                break;
            case 'H':
                Hist++;
                break;
         case 'R':
            Recurse = TRUE;
            break;
         case 'P':
            isPattern = TRUE;
            FilePattern = strnew(optarg);
            break;
            case 'h':
                Usage();
                break;
            case '?':
            default:
                ShortUsage();
                break;
        }
    }   
    if(Hist){
        VersionHistory(Hist);
    }

    for(int i=optind;i<argc;i++)
    {
#ifdef P3DWIN95

      filebuildup(argv[i]);

#else
        Files.Append(argv[i]);
#endif
    }

    if(Files.Count() ==0)
    {
        ShortUsage();
    }
}

void
Parameters::ShortUsage()
{
    printf("p3dcompdrawopt version %s\n",version);
    printf("Using ATG %s Changelist %s %s\n", ATG_VERSION, compileChangelist, compileTime);
    puts( "\nCopyright Radical Entertainment 2015\n\n"
            "   Usage: p3dcompdrawopt [options] <inputfile> [<inputfile> ...]\n\n"

         "This tool optomized composite drawable an the associated skins and geometries\n"
            "\n"
            "Try p3dcompdrawopt --help for more info.\n");
    exit(1);
}

void
Parameters::Usage()
{
    printf("p3dcompdrawopt version %s\n",version);
    printf("Using ATG %s Changelist %s %s\n", ATG_VERSION, compileChangelist, compileTime);
    puts( "\nCopyright Radical Entertainment 2015\n\n"
            "   Usage: p3dcompdrawopt [options] <inputfile> [<inputfile> ...]\n\n"
         "This tool optomized composite drawable an the associated skins and geometries\n"
            "\n"
            "Support for filename wildcards is provided.\n"
            "\n"
            "Possible options are:\n"
         "-o, --output-file name  Specify output file name\n"
         "-s, --skinmerge         merge skins into single skin\n"
         "-w, --wheels            Optimise the wheels of Simpsons' vehicles\n"
            "\n"
            "Standard options:\n"
            "  -v            Verbose output (more v's for more output)\n"
            "  -V            Maximum verbosity\n"
            "  -n            Suppress the P3D_HISTORY chunk\n"
            "  -H            Show version History\n"
            "  -h --help     Print this message\n"
        );
    exit(1);
}
void
Parameters::VersionHistory(int count)
{
    printf("Using ATG %s Changelist %s %s\n", ATG_VERSION, compileChangelist, compileTime);
    puts( "Copyright Radical Entertainment 2015\n");

    for(int x=0; versioninfo[x] && (x<10*count); x++){
          printf("%s\n",versioninfo[x]);
    }
    exit(0);
}

void
Parameters::filebuildup(char* filename)
{
    // This funky code is all to handle wildcards on sub-Unix operating systems
    if(strchr(filename,'*') || strchr(filename,'?') || !strcmp(filename,".") ){
        char Path[1024];
        char Path2[1024];
        char fullPath[1024];

        strcpy(Path,filename);

        if( strrchr(Path,'\\') || strrchr(Path,'/') )
        {
            strcpy(fullPath, filename);
        }
        else
        {
            strcpy(Path,".");    
            strcpy(fullPath, Path);
        }

        if (fullPath[strlen(fullPath)-1] != '\\')
        {
            int length = strlen(fullPath);

            fullPath[length] = '\\';
            fullPath[length+1] = '\0';
        }

        strcat(fullPath, filename);

        _finddata_t fd;


        long handle = _findfirst( fullPath, &fd );

        if( handle == -1 && !Recurse ){
            printf( "%s: No Match", fullPath );
            exit( -1 );
        }

        while( handle != -1 ){
            if ( !strcmp(fd.name,".") || !strcmp(fd.name,"..") )
            {
               if(_findnext( handle, &fd ) == -1) break;
               continue;
            }

            // filename is not a directory
            if ( !(fd.attrib & 0x10) ){
               char buf[1024];

               sprintf(buf,"%s\\%s",Path,fd.name);

               char* pathname = buf;
               Files.Append(pathname);
            }

            if(_findnext( handle, &fd ) == -1) break;
        }

        // if we are doing recursion then look at the directories
        if(Recurse){
            strcpy(fullPath, Path);
            strcat(fullPath, "\\*");

            long handle = _findfirst( fullPath, &fd );

            if( handle == -1 && !Recurse )
            {
               printf( "%s: No Match", filename );
               exit( -1 );
            }

            while( handle != -1 ){
               if ( !strcmp(fd.name,".") || !strcmp(fd.name,"..") )
               {
                  if(_findnext( handle, &fd ) == -1) break;
                  continue;
               }

               // filename is actually a directory
               if ( fd.attrib & 0x10 )
               {
                  // buildup the appropriate pathname to pass into the recursive function
                  strcpy(Path2,Path);
                  strcat(Path2,"\\");
                  strcat(Path2,fd.name);
                  strcat(Path2,"\\");

                  filebuildup(Path2);
               }

               if(_findnext( handle, &fd ) == -1) break;
            }
        }
    } 
    else{
        Files.Append(filename);
    }
}

tlDataChunk*
Parameters::HistoryChunk()
{
    tlHistory history;
    char buf[512];
    sprintf(buf,"p3dcompdrawopt version %s (with ATG %s)", version, ATG_VERSION);
    history.AddLine(buf);
    char* b = buf;
    int i;
    for( i = 0; i < Argc; i++)
    {
        if(b + strlen(Argv[i]) > buf + 251)       // 252 is the largest multiple of 4 less than 256
        {
            // terminate the string as a precaution
            buf[252] = 0;
            history.AddLine(buf);
            b = buf;
        }
        b += sprintf(b,"%s ",Argv[i]);
    }
    // remove the last space
    if( i > 0 )
    {
        *(b-1) = 0;
    }
    // terminate the string as a precaution
    buf[252] = 0;
    history.AddLine(buf);

    // Logon name and date info
    time_t ltime;
    struct tm *now;
    time(&ltime);
    now = localtime(&ltime);
    strftime(buf, 256, "Run at %B %d, %Y, %H:%M:%S by ", now);

#ifdef P3DWIN95
    DWORD size = 256;
    char lbuf[256];
    GetUserName(lbuf, &size);

    strcat(buf, lbuf);
#else
    char* loginname = getlogin();
    if(loginname)
    {
        strcat(buf, loginname);
    } else {
        strcat(buf, "Unknown");
    }
#endif
    history.AddLine(buf);
    
    return history.Chunk();
}

