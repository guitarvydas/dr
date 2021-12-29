~/app/make.bash
cwd=`pwd`
plpath=`realpath ../query/`
cp ~/app/das2f/fb.pl .
prep "." "$" designrule.ohm designrulea.glue --stop=1 --support=${cwd}/support.js --PLPATH=${plpath} <dr-edgecontainment.md

