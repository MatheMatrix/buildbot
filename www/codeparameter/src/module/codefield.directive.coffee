# Register new module
class Codeparameter extends App
    constructor: -> return [
        'ui.ace'
        'common'
    ]

# setup ace to fetch its module from the plugin baseURL
class AceConfig extends Run
    constructor: (config) ->
        window.ace.config.set("basePath", config.url + "codeparameter")

# defines custom field directives which only have templates
class Codefield extends Directive
    constructor: ->
        return {
            replace: false
            restrict: 'E'
            scope: false
            templateUrl: "codeparameter/views/codefield.html"
        }