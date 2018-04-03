#
# MacIntel OsX 10.7.5
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
 
FSUB1= complot.f endfio.f scratchb.f timer.f linux.f screen.f
 
CSUBS= dash.c
 
OBJ= $(FSUB1:.f=.o) $(CSUBS:.c=.o)
 
SRC= $(FSUB1) $(CSUBS)
 
all: complot comhard
 
complot: $(OBJ)
	$(FC) -o complot $(FFLAGS) $(OBJ) $(LIBDIR) $(LIBS)
 
comhard: complot.o endfio.o scratchb.o timer.o linux.o hardsave.o
	$(FC) -o comhard $(FFLAGS) complot.o endfio.o scratchb.o timer.o \
        linux.o hardsave.o
 
 
