$(window).scroll(function(){
  if( window.XMLHttpRequest ) {
    if (document.documentElement.scrollTop > 100 || self.pageYOffset > 100) {
      $('#floating-buttons').append($('#form-buttons-inner').detach());
      $('#floating-buttons').show();
    } else if (document.documentElement.scrollTop < 100 || self.pageYOffset < 100) {
      $('#floating-buttons').hide();
      $('#form-buttons').append($('#form-buttons-inner').detach());
    }
  }
});