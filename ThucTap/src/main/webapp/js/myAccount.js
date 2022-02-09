
var pwOld = document.getElementById("pwOld");
var pwNew = document.getElementById("pwNew");
var pwConfirm = document.getElementById("pwConfirm");

var pwNewErr = document.getElementById("pwNewErr");
var pwConfirmErr = document.getElementById("pwConfirmErr");

pwNew.onkeyup = function() {
	if( (pwNew.value.match(pwOld.value)&& (pwNew.value.length==pwOld.value.length) ) &&pwNew.value.length!=0 ){
		pwNewErr.style.display="block";
	}else pwNewErr.style.display="none";
}

pwConfirm.onkeyup = function() {
	if( ( !pwConfirm.value.match(pwNew.value)|| (pwConfirm.value.length!=pwNew.value.length)) &&pwConfirm.value.length!=0 ){
		pwConfirmErr.style.display="block";
	}else pwConfirmErr.style.display="none";
}