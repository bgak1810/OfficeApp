function setVal(update) {
    /* Included to show an option if you care to use jQuery  
    var defaults = { jsonRS: null, lookupField: null, lookupKey: null,
        targetField: null, targetData: null, checkAllRows: false }; 
    //update = $.extend({}, defaults, update); */

    for (var i = 0; i < update.jsonRS.length; i++) {
        if (update.jsonRS[i][update.lookupField] === update.lookupKey || update.lookupKey === '*') {
            update.jsonRS[i][update.targetField] = update.targetData;
            if (!update.checkAllRows) { return; }
        }
    }
}


var jsonObj = [{ 'Id': '1', 'Username': 'Ray', 'FatherName': 'Thompson' },
{ 'Id': '2', 'Username': 'Steve', 'FatherName': 'Johnson' },
    { 'Id': '3', 'Username': 'Albert', 'FatherName': 'Einstein' }]

var update = {
    jsonRS: jsonObj,
    lookupField: "Id",
    lookupKey: 2,
    targetField: "Username",
    targetData: "Thomas",
    checkAllRows: false
};

setVal(update);