#####################################################################
# Note: The order of the include does seem to matter.  Please do not
#	modify this file
# 
#####################################################################

#================================
# files to be compiled and linked
#================================

# using .PHONY just makes sure that these always happen
.PHONY : always precompile libs libsclean prelink compile link clientclean

#======================================
# The build process consists of 5 steps
#======================================

always : precompile libs compile prelink link

include files.txt

allclean : clean libsclean

clean : clientclean

quick : precompile compile prelink link

#================================
# Our global makefile
#================================
include $(ROOTDIR)\radbuild\makefile

#===========================================
# Inlcude dependencies, **must be included**
#===========================================
ifeq ($(DOCLEAN),false)
-include $(DEPS)
endif


