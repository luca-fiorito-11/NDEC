#
# MacIntel OsX 10.9.5 Mavericks
# Intel ifort 15.0
#
# execute ./OsX-ifort.mak 
#
cd complot
rm *.o complot comhard Makelist
make -f osx-ifort.mak >& Makelist
cp complot  comhard ../../.
cd ..
cd evalplot
rm *.o evalplot evalhard Makelist
make -f osx-ifort.mak >& Makelist
cp evalplot evalhard ../../.
cd ..
#
cat sigma1.f   endfio.f  scratchb.f  timer.f  mac.f > x.f
ifort -o sigma1    -O0 -static-intel x.f
cat recent.f   endfio.f  scratchb.f  timer.f  mac.f > x.f
ifort -o recent    -O0 -static-intel   x.f
cat linear.f   endfio.f  scratchb.f  timer.f  mac.f > x.f
ifort -o linear    -O0 -static-intel   x.f
cat groupie.f  endfio.f  scratchb.f  timer.f  mac.f > x.f
ifort -o groupie   -O0 -static-intel   x.f
cat dictin.f   endfio.f  scratchb.f  timer.f  mac.f > x.f
ifort -o dictin    -O0 -static-intel   x.f
cat endf2c.f   endfio.f  scratchb.f  timer.f  mac.f > x.f
ifort -o endf2c  -O0 -static-intel   x.f  
cat fixup.f    endfio.f  scratchb.f  timer.f  mac.f > x.f
ifort -o fixup     -O0 -static-intel   x.f
cat legend.f   endfio.f  scratchb.f  timer.f  mac.f > x.f
ifort -o legend    -O0 -static-intel   x.f
cat merger.f   endfio.f  scratchb.f  timer.f  mac.f > x.f
ifort -o merger    -O0 -static-intel   x.f
cat mixer.f    endfio.f  scratchb.f  timer.f  mac.f > x.f
ifort -o mixer     -O0 -static-intel   x.f
cat sixpak.f   endfio.f  scratchb.f  timer.f  mac.f > x.f
ifort -o sixpak    -O0 -static-intel   x.f
cat spectra.f  endfio.f  scratchb.f  timer.f  mac.f > x.f
ifort -o spectra   -O0 -static-intel   x.f
cat virgin.f   endfio.f  scratchb.f  timer.f  mac.f > x.f
ifort -o virgin    -O0 -static-intel   x.f
cat activate.f endfio.f  scratchb.f  timer.f  mac.f > x.f
ifort -o activate  -O0 -static-intel  x.f
cat convert.f                        timer.f  mac.f > x.f
ifort -o convert   -O0 -static-intel  x.f
cat relabel.f                        timer.f  mac.f > x.f
ifort -o relabel   -O0 -static-intel  x.f
rm  x.f
#
# copy all executables in the directory above
#
cp sigma1 recent linear groupie dictin fixup legend ../.
cp merger mixer sixpak spectra virgin activate ../.
cp convert relabel endf2c ../.
#

