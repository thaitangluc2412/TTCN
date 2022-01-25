$(document).ready(function(){
    $('#pwNew').on('focusout', function(){
		
        if($('#pwNew').val() === ""){
            $('.error').text('New password Required...!');
            $('.error').fadeIn("slow");
            console.log("11111111");
        } else {
        	$('.error').fadeOut('slow');
        	console.log("2222222222");
        }
    });

});
$(document).ready(function(){
    $('#pwConfirm').on('focusout', function(){
		
        if($('#pwConfirm').val() === ""){
            $('.error2').text('Comfirm password Required...!');
            $('.error2').fadeIn("slow");
            console.log("11111111");
        } else {
        	$('.error2').fadeOut('slow');
        	console.log("2222222222");
        }
    });

});

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