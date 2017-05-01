

$(document).ready(function(){

    var options = [

      {selector: '#staggered', offset: 400, callback: function(el) {
        Materialize.showStaggeredList($(el));
      } }

    Materialize.scrollFire(options);
  });
