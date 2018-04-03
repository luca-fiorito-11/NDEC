#
# MacIntel OsX 10.7.6
# Intel Fortran & C++ Compilers 12.1
#
# make -f mac.mak
#
FFLAGS = -O0 -cxxlib -static-intel
CFLAGS =          
LIBS   = -lXt -lX11 
LIBDIR = -L/usr/X11/lib
CC     = icc -I/usr/X11/include
FC     = ifort
 
FSUB1= evalplot.f endfio.f scratchb.f timer.f linux.f screen.f
 
CSUBS= dash.c
 
OBJ= $(FSUB1:.f=.o) $(CSUBS:.c=.o)
 
SRC= $(FSUB1) $(CSUBS)
 
all: evalplot evalhard
 
evalplot: $(OBJ)
	$(FC) -o evalplot $(FFLAGS) $(OBJ) $(LIBDIR) $(LIBS)
 
evalhard: evalplot.o endfio.o scratchb.o timer.o linux.o hardsave.o
	$(FC) -o evalhard $(FFLAGS) evalplot.o endfio.o scratchb.o timer.o \
        linux.o hardsave.o
 
 
