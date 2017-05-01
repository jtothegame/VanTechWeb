$(document).ready(function(){
  var options = [
    {selector: '#article-block', offset: 400, callback: function(el) {
      Materialize.showStaggeredList($(el, 2000));
    } },
  ];
  Materialize.scrollFire(options);
})
