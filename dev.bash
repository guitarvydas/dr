~/app/make.bash
cwd=`pwd`
plpath=`realpath ../query/`
cp ~/app/das2f/fb.pl .
prep "begin cond\n" "end cond\n" cond.ohm cond.glue --inclusive --stop=1 --support=${cwd}/support.js --split <dr-edgecontainment.md
#prep "." "$" designrule.ohm designrulea.glue --stop=1 --support=${cwd}/support.js --PLPATH=${plpath} <dr-edgecontainment.md

