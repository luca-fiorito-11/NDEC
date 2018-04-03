#
# MacIntel OsX 10.9.5 Mavericks
# Gfortran 4.8.2 & Intel ifort 15.0
#
# make -f osx-gfortran.mak
#
#FFLAGS = -O0 -static-intel
#FFLAGS = -O0 -mmacosx-version-min=10.6 -static-libgfortran
FFLAGS = -O0 -static-libgfortran
CFLAGS =          
LIBS   = -lXt -lX11 
LIBDIR = -L/usr/X11/lib
#CC     = icc -I/usr/X11/include
#FC     = ifort
CC     = gcc -I/usr/X11/include
FC     = gfortran
 
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
 
 
