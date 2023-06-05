/*===========================================================================
    Automatically generated by Jeeves, don't edit.  Edit p3dsplit.sc instead

    File: Param.hpp 

    Command line parameters for p3dsplit

       This tool splits up geometry

    Copyright (c) 2015 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _PARAM_HPP
#define _PARAM_HPP

#include "tlTable.hpp"
#include "tlStringTable.hpp"

class tFile;
class tlDataChunk;

class Parameters
{

public:
    tlStringTable Files;

    Parameters(int argc, char* argv[]);
    ~Parameters();

    void          ShortUsage();                  //: Print a short usage message
    void          Usage();                       //: Print a usage message
    void          VersionHistory(int count = 1); //: Print version history
    tlDataChunk*  HistoryChunk();                //: Return a File History chunk

    // Tool specific parameters

   char* OutputFile ;//: Specify output file name
   int   xDiv       ;//: Specify num of x axis world divisions
   int   zDiv       ;//: Specify num of z axis world divisions
   int   splitType  ;//: Specify how to divide the world: 0: cut 1: tear
   char* geoName    ;//: Specify name of the new compoundMesh

    // Standard parameters implemented by all tools

    int         Verbosity;                    //: How much noise should this program make?
    int         WriteHistory;                 //: Should the tool write a history chunk?

private:

   void filebuildup(char* filename);

   bool     isPattern;
   bool     Recurse;
   char* FilePattern;

    int      Argc;
    char**   Argv;
};

extern Parameters* Param;

#endif
