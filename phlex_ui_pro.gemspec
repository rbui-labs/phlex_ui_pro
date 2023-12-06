Gem::Specification.new do |s|
  s.name        = "phlex_ui_pro"
  s.version     = "0.1.2"
  s.summary     = "PhlexUI Pro is a UI Component Library for Ruby developers."
  s.description = "PhlexUI Pro is a UI Component Library for Ruby developers. Built on top of the Phlex Framework."
  s.authors     = ["George Kettle"]
  s.email       = "george.kettle@icloud.com"
  s.files = Dir["lib/**/*.rb", "tasks/**/*.rake"]
  s.homepage    =
    "https://rubygems.org/gems/phlex_ui_pro"
  s.license       = "MIT"

  s.add_dependency "phlex", "~> 1.7"
	s.add_dependency "zeitwerk", "~> 2.6"
  s.add_dependency "rouge", "~> 4.2.0"
  s.add_dependency "phlex_ui", "~> 0.1.2"
end