/**
 * 
 */
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