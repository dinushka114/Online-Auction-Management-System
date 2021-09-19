/**
 * 
 */

function showBanner(data){
	
}

$(document).ready(function(){
	$("#registerForm").submit(function(e){
		var formData = {
				firstName : $("#firstName").val(),
				lastName : $("#lastName").val(),
				userName : $("#userName").val(),
				phone : $("#phone").val(),
				email : $("#email").val(),
				userType : $("#userType").val(),
				password : $("#password").val(),
				confirmPassword : $("#confirmPassword").val()
			}
		$.ajax({
			type: "POST",
		    url: "Register",
		    data: formData,
		    encode: true,
		    success:function(data){
		    	$("#result").html(`<div class="alert alert-success" role="alert">${data}</div>`);
//		    	console.log(data)
		    }
		})
		e.preventDefault();
	})
})