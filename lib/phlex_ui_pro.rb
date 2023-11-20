require 'phlex'
require 'zeitwerk'
require 'phlex_ui'

loader = Zeitwerk::Loader.for_gem
loader.inflector.inflect(
  "phlex_ui_pro" => "PhlexUI",
)
loader.setup # ready!

module PhlexUI
end

loader.eager_load