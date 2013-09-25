$ = jQuery

$.langSel = ->
  $.ajax
    dataType: 'jsonp',
    url: "http://ajaxhttpheaders.appspot.com",

    success: (headers) ->
      locale = headers['Accept-Language'].substr 0, 2
      $link = $ "[data-langsel-locale='#{locale}']"
      url = $link.attr('data-href') || $link.attr('href')
      self.location.replace url if url
