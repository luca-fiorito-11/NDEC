#
# 32 and 64 bit systems for LINUX in alphabetical order
#
cat activate.f endfio.f  scratchb.f  timer.f  linux.f > x.f
gfortran -static -o activate -O x.f
cat convert.f                        timer.f  linux.f > x.f
gfortran -static -o convert  -O x.f
cat dictin.f   endfio.f  scratchb.f  timer.f  linux.f > x.f
gfortran -static -o dictin   -O x.f
cat endf2c.f   endfio.f  scratchb.f  timer.f  linux.f > x.f
gfortran -static -o endf2c   -O x.f
cat fixup.f    endfio.f  scratchb.f  timer.f  linux.f > x.f
gfortran -static -o fixup    -O x.f
cat groupie.f  endfio.f  scratchb.f  timer.f  linux.f > x.f
gfortran -static -o groupie  -O x.f
cat legend.f   endfio.f  scratchb.f  timer.f  linux.f > x.f
gfortran -static -o legend   -O x.f
cat linear.f   endfio.f  scratchb.f  timer.f  linux.f > x.f
gfortran -static -o linear   -O x.f
cat merger.f   endfio.f  scratchb.f  timer.f  linux.f > x.f
gfortran -static -o merger   -O x.f
cat mixer.f    endfio.f  scratchb.f  timer.f  linux.f > x.f
gfortran -static -o mixer    -O x.f
cat recent.f   endfio.f  scratchb.f  timer.f  linux.f > x.f
gfortran -static -o recent   -O x.f
cat relabel.f                        timer.f  linux.f > x.f
gfortran -static -o relabel  -O x.f
cat sigma1.f   endfio.f  scratchb.f  timer.f  linux.f > x.f
gfortran -static -o sigma1   -O x.f
cat sixpak.f   endfio.f  scratchb.f  timer.f  linux.f > x.f
gfortran -static -o sixpak   -O x.f
cat spectra.f  endfio.f  scratchb.f  timer.f  linux.f > x.f
gfortran -static -o spectra  -O x.f
cat virgin.f   endfio.f  scratchb.f  timer.f  linux.f > x.f
gfortran -static -o virgin   -O x.f
rm  x.f