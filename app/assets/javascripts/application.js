// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .


//Login status style changes
function alreadyLoggedIn () {
	loggedInNotice();
	alert('You are already logged in.');
}

function notLoggedIn () {
	loggedOutNotice();
	alert('You are not logged in.');
}

function loggedInNotice () {
	$('#logInStatus').css("color", "#12842d");
	$('#logInStatus').css("background-color", "#27db51");
	$('#logInStatus').css("border", "solid 2px #12842d");
	$('#logInStatus').text("You are logged in with Yammergration.");
}

function loggedOutNotice () {
	$('#logInStatus').css("color", "#be102c");
	$('#logInStatus').css("background-color", "#f94b68");
	$('#logInStatus').css("border", "solid 2px #be102c");
	$('#logInStatus').text("You are not logged in with Yammergration.");
}

function printCheckLoginStatusResponse() {
	yam.getLoginStatus(
		function(response) {
			if (response.authResponse) {
				$(document).ready(function() {
					console.dir(response);
					console.log("access token (not nested):" + response.access_token.token)
					if (response.access_token.access_token) {
						console.log("access token (nested):" + response.access_token.access_token.token)
					}
					else {
						console.log("nested token is undefined");
					}
				});
			}
			else {
				$(document).ready(function() {
					notLoggedIn();
				});
			}
		}
	);
}

function printyamLoginResponse() {
	yam.getLoginStatus(
		function(response) {
			if (response.authResponse) {
				alreadyLoggedIn();
				console.dir(response);
				console.log("access token (not nested):" + response.access_token.token)
				if (response.access_token.access_token) {
					console.log("access token (nested):" + response.access_token.access_token.token)
				}
				else {
					console.log("nested token is undefined");
				}
			}
			else {
				loggedOutNotice();
				yam.login(function (response) {
					console.dir(response);
					if (response.authResponse) {
						loggedInNotice();
						console.log("access token (not nested):" + response.access_token.token)
						if (response.access_token.access_token) {
							console.log("access token (nested):" + response.access_token.access_token.token)
						}
						else {
							console.log("nested token is undefined");
						}
					}
					else {
						loggedOutNotice();
					}
				});
			}
		}
	);
}