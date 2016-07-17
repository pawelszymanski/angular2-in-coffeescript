# TODO:
#- 3 different directives



window.app = {}

document.addEventListener 'DOMContentLoaded', ->
  ng.platform.browser.bootstrap app.appComponent

componentName = (component) ->
  component.selector.replace(/-([a-z])/g, (g) -> g[1].toUpperCase()) + 'Component'

window.registerComponent = (component) ->
  window.app[componentName(component)] = ng.core
    .Component(component)
    .Class(constructor: -> new component.controller)
