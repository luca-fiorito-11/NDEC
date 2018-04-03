#
# MAC OsX 10.7.5
# Intel Fortran & C++ Compilers 12.1
#
# ./mac.mak
#
cat activate.f endfio.f  scratchb.f  timer.f  mac.f > x.f
ifort -o activate  -O0 -cxxlib -static-intel  x.f
cat convert.f                        timer.f  mac.f > x.f
ifort -o convert   -O0 -cxxlib -static-intel  x.f
cat dictin.f   endfio.f  scratchb.f  timer.f  mac.f > x.f
ifort -o dictin    -O0 -cxxlib -static-intel  x.f
cat endf2c.f   endfio.f  scratchb.f  timer.f  mac.f > x.f
ifort -o endf2c    -O0 -cxxlib -static-intel  x.f
cat fixup.f    endfio.f  scratchb.f  timer.f  mac.f > x.f
ifort -o fixup     -O0 -cxxlib -static-intel  x.f
cat groupie.f  endfio.f  scratchb.f  timer.f  mac.f > x.f
ifort -o groupie   -O0 -cxxlib -static-intel  x.f
cat legend.f   endfio.f  scratchb.f  timer.f  mac.f > x.f
ifort -o legend    -O0 -cxxlib -static-intel  x.f
cat linear.f   endfio.f  scratchb.f  timer.f  mac.f > x.f
ifort -o linear    -O0 -cxxlib -static-intel  x.f
cat merger.f   endfio.f  scratchb.f  timer.f  mac.f > x.f
ifort -o merger    -O0 -cxxlib -static-intel  x.f
cat mixer.f    endfio.f  scratchb.f  timer.f  mac.f > x.f
ifort -o mixer     -O0 -cxxlib -static-intel  x.f
cat recent.f   endfio.f  scratchb.f  timer.f  mac.f > x.f
ifort -o recent    -O0 -cxxlib -static-intel  x.f
cat relabel.f                        timer.f  mac.f > x.f
ifort -o relabel   -O0 -cxxlib -static-intel  x.f
cat sigma1.f   endfio.f  scratchb.f  timer.f  mac.f > x.f
ifort -o sigma1    -O0 -cxxlib -static-intel  x.f
cat sixpak.f   endfio.f  scratchb.f  timer.f  mac.f > x.f
ifort -o sixpak    -O0 -cxxlib -static-intel  x.f
cat spectra.f  endfio.f  scratchb.f  timer.f  mac.f > x.f
ifort -o spectra   -O0 -cxxlib -static-intel  x.f
cat virgin.f   endfio.f  scratchb.f  timer.f  mac.f > x.f
ifort -o virgin    -O0 -cxxlib -static-intel  x.f
rm  x.f
