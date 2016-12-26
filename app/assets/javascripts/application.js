// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

//$(document).ready( function() {
//  $(document).on('click', '.mobile_menu_toggle', function () {
    //$("nav.regions").toggle();
 // })
//});

// $( document ).on('turbolinks:load', function() {
//   console.log("It works on each visit!")
    
    
    function toggleNav() {
   
        if ( $("nav.regions").css("display") == "block" ) {
            $("nav.regions").css("display", "none");
            console.log("hide nav");
        } else {
            $("nav.regions").css("display", "block");
            console.log("show nav");
        }
    }
    
//     $(document).off('click', '.mobile_menu_toggle', toggleNav );
    $(document).on('click', '.mobile_menu_toggle', toggleNav );
   

//})
