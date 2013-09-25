(function() {
  var $;

  $ = jQuery;

  $.langSel = function() {
    return $.ajax({
      dataType: 'jsonp',
      url: "http://ajaxhttpheaders.appspot.com",
      success: function(headers) {
        var $link, locale, url;
        locale = headers['Accept-Language'].substr(0, 2);
        $link = $("[data-langsel-locale='" + locale + "']");
        url = $link.attr('data-href') || $link.attr('href');
        if (url) {
          return self.location.replace(url);
        }
      }
    });
  };

}).call(this);
