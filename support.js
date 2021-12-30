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

///////
// from ~/app/querydisplay3/support.js
//////

var parameterArray = [];

exports.formatParameters = function () {
    return parameterArray.join (',');
}

exports.clearParameters = function () {
    parameterArray = [];
}

exports.pushParameter = function (s) {
    parameterArray.push (s.trim ());
    return '';
}

exports.formatJSParameters = function () {
    var counter = 0;
    var result = [];
    parameterArray.forEach (ident => {
	result.push (`var ${ident} = p [${counter}];`);
	counter += 1;
    });
    return result.join ('\n');
}


var conddisplayStack = []; // { predicate, then-lines-as-string }

exports.formatConditionalDisplays = function () {
    var result = '';
    var elseif = 'if';
    conddisplayStack.forEach (cond => {
	result = `${result}\n${elseif} (${cond.predicate}) { console.log (\`${cond.then}\`);}`;
	elseif = 'else if';
    });
    return result;
}

exports.pushConditionalDisplay = function (predicateString, thenString) {
    conddisplayStack.push ({predicate: predicateString.trim (), then: thenString.trim ()});
    return "";
}


var finaldisplayStack = []; // { predicate, then-lines-as-string }

exports.formatFinalDisplays = function () {
    var result = '';
    var elseif = 'if';
    finaldisplayStack.forEach (cond => {
	result = `${result}\n${elseif} (${cond.predicate}) { console.log (\`${cond.then}\`);}`;
	elseif = 'else if';
    });
    return result;
}

exports.pushFinalDisplay = function (predicateString, thenString) {
    finaldisplayStack.push ({predicate: predicateString.trim (), then: thenString.trim ()});
    return "";
}



exports.prefix = function (argv) {
   if (argv.prefix) {
	return argv.prefix;
    } else {
	return '';
    }
}
