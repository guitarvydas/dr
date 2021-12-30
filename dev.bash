clear
~/app/make.bash
cwd=`pwd`
plpath=`realpath ../query/`
cp ~/app/das2f/fb.pl .
temp=temp_${RANDOM}
#prep "cond\n" "endcond\n" cond.ohm cond.glue --inclusive --stop=1 --support=${cwd}/support.js --split <dr-edgecontainment.md
prep "cond\n" "endcond\n" cond.ohm cond.glue --inclusive --stop=1 --support=${cwd}/support.js <dr-edgecontainment.md >$temp
prep "." "$" designrule.ohm designrulea.glue --stop=1 --support=${cwd}/support.js --PLPATH=${plpath} <$temp >dra
prep "." "$" designrule.ohm designruleb.glue --stop=1 --support=${cwd}/support.js --PLPATH=${plpath} <dr-edgecontainment.md
rm $temp
