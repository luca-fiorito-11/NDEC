#
# MacIntel OsX 10.9.5 Mavericks
# Gfortran 4.8.2
#
# execute ./OsX-gfortran.mak 
#
cd complot
rm *.o complot comhard Makelist
make -f osx-gfortran.mak >& Makelist
cp complot  comhard ../../.
cd ..
cd evalplot
rm *.o evalplot evalhard Makelist
make -f osx-gfortran.mak >& Makelist
cp evalplot evalhard ../../.
cd ..
#
cat sigma1.f   endfio.f  scratchb.f  timer.f  mac.f > x.f
gfortran -o sigma1    -O0 -static-libgfortran x.f
cat recent.f   endfio.f  scratchb.f  timer.f  mac.f > x.f
gfortran -o recent    -O0 -static-libgfortran   x.f
cat linear.f   endfio.f  scratchb.f  timer.f  mac.f > x.f
gfortran -o linear    -O0 -static-libgfortran   x.f
cat groupie.f  endfio.f  scratchb.f  timer.f  mac.f > x.f
gfortran -o groupie   -O0 -static-libgfortran   x.f
cat dictin.f   endfio.f  scratchb.f  timer.f  mac.f > x.f
gfortran -o dictin    -O0 -static-libgfortran   x.f
cat endf2c.f   endfio.f  scratchb.f  timer.f  mac.f > x.f
gfortran -o endf2c  -O0 -static-libgfortran   x.f  
cat fixup.f    endfio.f  scratchb.f  timer.f  mac.f > x.f
gfortran -o fixup     -O0 -static-libgfortran   x.f
cat legend.f   endfio.f  scratchb.f  timer.f  mac.f > x.f
gfortran -o legend    -O0 -static-libgfortran   x.f
cat merger.f   endfio.f  scratchb.f  timer.f  mac.f > x.f
gfortran -o merger    -O0 -static-libgfortran   x.f
cat mixer.f    endfio.f  scratchb.f  timer.f  mac.f > x.f
gfortran -o mixer     -O0 -static-libgfortran   x.f
cat sixpak.f   endfio.f  scratchb.f  timer.f  mac.f > x.f
gfortran -o sixpak    -O0 -static-libgfortran   x.f
cat spectra.f  endfio.f  scratchb.f  timer.f  mac.f > x.f
gfortran -o spectra   -O0 -static-libgfortran   x.f
cat virgin.f   endfio.f  scratchb.f  timer.f  mac.f > x.f
gfortran -o virgin    -O0 -static-libgfortran   x.f
cat activate.f endfio.f  scratchb.f  timer.f  mac.f > x.f
gfortran -o activate  -O0 -static-libgfortran  x.f
cat convert.f                        timer.f  mac.f > x.f
gfortran -o convert   -O0 -static-libgfortran  x.f
cat relabel.f                        timer.f  mac.f > x.f
gfortran -o relabel   -O0 -static-libgfortran  x.f
rm  x.f
#
# copy all executables in the directory above
#
cp sigma1 recent linear groupie dictin fixup legend ../.
cp merger mixer sixpak spectra virgin activate ../.
cp convert relabel endf2c ../.
#

