# Microsoft Developer Studio Project File - Name="p3dBumpMapShader4" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 60000
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=p3dBumpMapShader4 - Win32 Tools Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "p3dBumpMapShader40.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "p3dBumpMapShader40.mak" CFG="p3dBumpMapShader4 - Win32 Tools Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "p3dBumpMapShader4 - Win32 Tools Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "p3dBumpMapShader4 - Win32 Tools Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "p3dBumpMapShader4"
# PROP Scc_LocalPath "."
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "p3dBumpMapShader4 - Win32 Tools Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "p3dBumpMapShader4___Win32_Tools_Release"
# PROP BASE Intermediate_Dir "p3dBumpMapShader4___Win32_Tools_Release"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release4"
# PROP Intermediate_Dir "Release4"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
F90=fl32.exe
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /I "../../../../sdks/maya4_0/include" /I "../../../../pddi" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "NT_PLUGIN" /D "MAYA_4" /FD /c
# ADD CPP /nologo /MT /W3 /GX /O2 /I "../../../../sdks/maya4_0/include" /I "../../../../pddi" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "NT_PLUGIN" /D "MAYA_4" /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /o "NUL" /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib version.lib Foundation.lib OpenMaya.lib OpenMayaRender.lib /nologo /subsystem:windows /dll /machine:I386 /out:"Release4/p3dBumpMapShader.mll " /libpath:"..\..\..\..\sdks\maya4_0\lib" /export:initializePlugin /export:uninitializePlugin
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib Foundation.lib OpenMaya.lib OpenMayaAnim.lib OpenMayaRender.lib version.lib /nologo /subsystem:windows /dll /machine:I386 /out:"Release4/p3dBumpMapShader.mll " /libpath:"..\..\..\..\sdks\maya4_0\lib" /export:initializePlugin /export:uninitializePlugin
# SUBTRACT LINK32 /pdb:none
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Cmds=copyreleasemll40
# End Special Build Tool

!ELSEIF  "$(CFG)" == "p3dBumpMapShader4 - Win32 Tools Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "p3dBumpMapShader4___Win32_Tools_Debug"
# PROP BASE Intermediate_Dir "p3dBumpMapShader4___Win32_Tools_Debug"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug4"
# PROP Intermediate_Dir "Debug4"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
F90=fl32.exe
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /I "..\..\..\..\lib" /I "../../../../sdks/maya4_0/include" /I "../../../../pddi" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "NT_PLUGIN" /D "MAYA_4" /FR /FD /c
# ADD CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /I "..\..\..\..\lib" /I "../../../../sdks/maya4_0/include" /I "../../../../pddi" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "NT_PLUGIN" /D "MAYA_4" /FR /FD /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib Foundation.lib OpenMaya.lib OpenMayaRender.lib version.lib /nologo /subsystem:windows /dll /debug /machine:I386 /out:"Debug4/p3dBumpMapShader.mll" /libpath:"..\..\..\..\sdks\maya4_0\lib" /export:initializePlugin /export:uninitializePlugin
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib Foundation.lib OpenMaya.lib OpenMayaAnim.lib OpenMayaRender.lib version.lib /nologo /subsystem:windows /dll /debug /machine:I386 /out:"Debug4/p3dBumpMapShader.mll" /libpath:"..\..\..\..\sdks\maya4_0\lib" /export:initializePlugin /export:uninitializePlugin
# SUBTRACT LINK32 /pdb:none
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Cmds=copydebugmll40
# End Special Build Tool

!ENDIF 

# Begin Target

# Name "p3dBumpMapShader4 - Win32 Tools Release"
# Name "p3dBumpMapShader4 - Win32 Tools Debug"
# Begin Group "src"

# PROP Default_Filter "*.cpp"
# Begin Source File

SOURCE=.\src\compute.cpp
# End Source File
# Begin Source File

SOURCE=..\p3dSimpleShader\src\GetVersionString.c
# End Source File
# Begin Source File

SOURCE=..\common\src\mayaResolveName.cpp
# End Source File
# Begin Source File

SOURCE=.\src\p3dBumpMapShader.cpp
# End Source File
# End Group
# Begin Group "mel"

# PROP Default_Filter "*.mel"
# Begin Source File

SOURCE=.\mel\AEpure3dBumpMapShaderTemplate.mel

!IF  "$(CFG)" == "p3dBumpMapShader4 - Win32 Tools Release"

!ELSEIF  "$(CFG)" == "p3dBumpMapShader4 - Win32 Tools Debug"

# Begin Custom Build - Installing MEL $(InputPath)
InputPath=.\mel\AEpure3dBumpMapShaderTemplate.mel
InputName=AEpure3dBumpMapShaderTemplate

"C:\AW\Maya4.0\scripts\others\$(InputName).mel" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy /Y $(InputPath) C:\AW\Maya4.0\scripts\others\$(InputName).mel

# End Custom Build

!ENDIF 

# End Source File
# End Group
# Begin Group "inc"

# PROP Default_Filter ".hpp"
# Begin Source File

SOURCE=..\common\inc\mayaResolveName.hpp
# End Source File
# Begin Source File

SOURCE=.\src\p3dBumpMapShader.hpp
# End Source File
# End Group
# Begin Group "build"

# PROP Default_Filter "*.bat"
# Begin Source File

SOURCE=.\copydebugmll40.bat
# End Source File
# Begin Source File

SOURCE=.\copyreleasemll40.bat
# End Source File
# End Group
# Begin Group "resource"

# PROP Default_Filter "*.rc"
# Begin Source File

SOURCE=.\src\p3dBumpMapShader.rc
# End Source File
# Begin Source File

SOURCE=.\src\resource.h
# End Source File
# End Group
# Begin Source File

SOURCE=.\p3dBumpMapShader.sc

!IF  "$(CFG)" == "p3dBumpMapShader4 - Win32 Tools Release"

# Begin Custom Build - Jeeves
InputPath=.\p3dBumpMapShader.sc

BuildCmds= \
	perl ..\Jeeves\jeeves -I ..\Jeeves -s Shader_Schema -t ..\template\shader_cpp.tpl p3dBumpMapShader.sc \
	perl ..\Jeeves\jeeves -I ..\Jeeves -s Shader_Schema -t ..\template\shader_hpp.tpl p3dBumpMapShader.sc \
	

"./src/p3dBumpMapShader.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"./src/p3dBumpMapShader.hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "p3dBumpMapShader4 - Win32 Tools Debug"

# Begin Custom Build - Jeeves
InputPath=.\p3dBumpMapShader.sc

BuildCmds= \
	perl ..\Jeeves\jeeves -I ..\Jeeves -s Shader_Schema -t ..\template\shader_cpp.tpl p3dBumpMapShader.sc \
	perl ..\Jeeves\jeeves -I ..\Jeeves -s Shader_Schema -t ..\template\shader_hpp.tpl p3dBumpMapShader.sc \
	

"./src/p3dBumpMapShader.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"./src/p3dBumpMapShader.hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# End Target
# End Project
