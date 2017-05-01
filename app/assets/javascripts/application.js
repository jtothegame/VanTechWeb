//= require jquery
//= require jquery_ujs
//= require chosen-jquery
//= require materialize
//= require jquery.vide
//= require underscore
//= require gmaps/google
//= require_tree .

$(document).ready(function(){

 $('.parallax').parallax();
 $('.chosen-select').chosen();

// modal config stuff
 $('.modal').modal({
     dismissible: true,
     opacity: .2,
     inDuration: 300,
     outDuration: 200,
     startingTop: '4%',
     endingTop: '10%',
   }
 );

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
