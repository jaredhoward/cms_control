Event.observe(window, 'scroll', function()
{
  if( window.XMLHttpRequest ) {
    if (document.documentElement.scrollTop > 100 || self.pageYOffset > 100) {
      $('floating-buttons').insert($('form-buttons-inner').remove());
      $('floating-buttons').show();
    } else if (document.documentElement.scrollTop < 100 || self.pageYOffset < 100) {
      $('floating-buttons').hide();
      $('form-buttons').insert($('form-buttons-inner').remove());
    }
  }
}
);