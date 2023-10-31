/**
 * 
 */

var fnameError = document.getElementById('fname-error');
var lnameError = document.getElementById('lname-error');
var emailError = document.getElementById('email-error');
var passwordError = document.getElementById('password-error');

function validateFName(){
	
	var fname = document.getElementById('firstname').value;
	
	if (fname.length == 0){
		
		fnameError.innerHTML = 'First name is required';
		return false;
		
	}
	
	if (!fname.match(/^[A-Za-z]*\s{1}[A-Za-z]*&/)){
		
		fnameError.innerHTML = 'Please input valid name';
		return false;
	}
	
	fnameError.innerHTML = 'valid';
	return true;
	
}