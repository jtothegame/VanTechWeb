//= require jquery
//= require jquery_ujs
//= require chosen-jquery
//= require chosen-jquery
//= require materialize
//= require_tree .

$(document).ready(function(){

 $('.parallax').parallax();

 $('.chosen-select').chosen()

// for user dropdown menu
 $('.dropdown-button').dropdown({
      inDuration: 500,
      outDuration: 225,
      constrainWidth: false,
      hover: false,
      gutter: -15,
      belowOrigin: true,
      alignment: 'right',
      stopPropagation: false
    }
  );

// all jQ goes above this closing brace
 });
