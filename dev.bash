~/app/make.bash
cwd=`pwd`
plpath=`realpath ../query/`
cp ~/app/das2f/fb.pl .
#prep "cond\n" "endcond\n" cond.ohm cond.glue --inclusive --stop=1 --support=${cwd}/support.js --split <dr-edgecontainment.md
prep "cond\n" "endcond\n" cond.ohm cond.glue --inclusive --stop=1 --support=${cwd}/support.js <dr-edgecontainment.md
prep "." "$" designrule.ohm designrulea.glue --stop=1 --support=${cwd}/support.js --PLPATH=${plpath} <dr-edgecontainment.md

