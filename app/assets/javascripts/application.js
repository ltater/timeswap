// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require bootstrap
//= require_tree .

$(function() {
	console.log("Ready!");
	
	$('.dropdown-toggle').dropdown();

	$('#get-help').click(function (e) {
	  e.preventDefault();
	  $(this).tab('show');
	})

	$('#give-help').click(function (e) {
	  e.preventDefault();
	  $(this).tab('show');
	})

	// footer in the viewport
	// var docHeight = $(window).height();
	// var footerHeight = $('#footer').height();
	// var footerTop = $('#footer').position().top + footerHeight;

	// if (footerTop < docHeight) {
	// 	$('#footer').css('margin-top', (docHeight - footerTop) + 'px');
	// }

});
