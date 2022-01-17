$(document).ready(function(){
    $('#email').on('focusout', function(){

        if($('#email').val() != ""){

           if(validateEmail($('#email').val())){

            $('.error').fadeOut('slow');

           }else{
              $('.error').text('Invalid Email...!');
              $('.error').fadeIn('slow');
           }

        }else{
            $('.error').text('Email Required...!');
            $('.error').fadeIn("slow");
        }



    });

});
$(document).ready(function(){
    $('#pass').on('focusout', function(){
		
        if($('#pass').val() === ""){
            $('.error2').text('Password Required...!');
            $('.error2').fadeIn("slow");
            console.log("11111111");
        } else {
        	$('.error2').fadeOut('slow');
        	console.log("2222222222");
        }
    });

});

function validateEmail(eVal){
    var val = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
    
    if( val.test(eVal)){
        return true;
    }else{
        return false;
    }
}


