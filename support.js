let argv;

exports.setArgv = function (a) {
    // console.error (a);
    argv = a;
}

exports.getArgv = function (s) {
    return argv [s];
}

let condcounter = 0;
function ccname () {
    return `cond${condcounter}`;
}
exports.generateConditionName = function () {
    condcounter += 1;
    return ccname ();
}
exports.getCurrentConditionName = function () {
    return ccname ();
}
