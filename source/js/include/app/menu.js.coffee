class App::Menu
  @getter 'closeButton', -> document.getElementById 'close'
  close: -> history.back()

  constructor: ->
    @closeButton.addEventListener 'click', => @close()
    @closeButton.addEventListener 'touchend', => @close()

document.addEventListener 'DOMContentLoaded', ->
  self.app.menu = new App::Menu
