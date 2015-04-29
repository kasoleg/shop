$(document).ready(function() {
	if ($("#registration-form").is(":visible")) {
        $("#new-account-btn").hide()
    } else {
        $("#new-account-btn").show()
    }

	$("#new-account-btn").click(function() {
	        if ($("#registration-form").is(":visible")) {
	            $(this).show()
	        } else {
	            $(this).hide();
	            $("#registration-form").slideDown(500);
	        }
	    });		
});

$(document).ready(function() {
	var loginForm = $("#loginForm");
	var email = $('#email');
	var password = $("#password");
	var errorEmail = $("#errorEmail");
	var errorPassword = $("#errorPassword");
	var emailReg = /^[a-zA-Z0-9]+[a-zA-Z0-9_.-]+[a-zA-Z0-9_-]+@[a-zA-Z0-9]+[a-zA-Z0-9.-]+[a-zA-Z0-9]+.[a-z]{2,4}$/;
	
	
	email.keydown(function() {
		errorEmail.text("");
	});
	
	password.keydown(function() {
		errorPassword.text("");
	});
	
	loginForm.submit(function() {
		if (validateEmail() & validatePassword()) {
			return true;
		} else {
			return false;
		}
	});
	
	function validateEmail() {
		var errors = false;
		if (email.val() == "") {
			errorEmail.text("The email is required and cannot be empty");
			errors = true;
		} else if (!emailReg.test(email.val())) {
			errorEmail.text("The input is not a valid email address");
			errors = true;
		}	else {
			errorEmail.text("");
		} 
		if (errors)
			return false;
		else
			return true;
	}
	
	function validatePassword() {
		if (password.val().length == 0) {
			errorPassword.text("The password is required and cannot be empty");
			return false;	
		} else {
			return true;
		}
	}
	
	var registrationForm = $("#registration-form");
	var name = $("#name");
	var emailRegistration = $('#emailRegistration');
	var passwordRegistration = $("#passwordRegistration");
	var errorEmailRegistration = $("#errorEmailRegistration");
	var errorPasswordRegistration = $("#errorPasswordRegistration");
	var errorName = $("#errorName");
	
	emailRegistration.keydown(function() {
		errorEmailRegistration.text("");
	});
	
	passwordRegistration.keydown(function() {
		errorPasswordRegistration.text("");
	});
	
	name.keydown(function() {
		errorName.text("");
	});
	
	registrationForm.submit(function() {
		if (validateNameRegistration() & validateEmailRegistration() & validatePasswordRegistration()) {
			return true;
		} else {
			return false;
		}
	});
	
	function validateEmailRegistration() {
		var errors = false;
		if (emailRegistration.val() == "") {
			errorEmailRegistration.text("The email is required and cannot be empty");
			errors = true;
		} else if (!emailReg.test(emailRegistration.val())) {
			errorEmailRegistration.text("The input is not a valid email address");
			errors = true;
		}	else {
			errorEmailRegistration.text("");
		} 
		if (errors)
			return false;
		else
			return true;
	}
	
	function validatePasswordRegistration() {
		if (passwordRegistration.val().length == 0) {
			errorPasswordRegistration.text("The password is required and cannot be empty");
			return false;	
		} else {
			return true;
		}
	}
	
	function validateNameRegistration() {
		if (name.val() == "") {
			errorName.text("The username is required and cannot be empty");
			return false;
		} else {
			errorName.text("");
			return true;
		}
	}
});

$(document).ready(function() {
	var shopDropdownMenu = $("#shop-dropdown-menu");
	var account = $("#account");
	
	account.mouseenter(function() {
		if (!shopDropdownMenu.is(":visible")) {
            shopDropdownMenu.slideDown(200);
        }
	});
	
	account.mouseleave(function() {
		shopDropdownMenu.slideUp(200);
	});
});

