# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mongotail/version'

Gem::Specification.new do |gem|
  gem.name          = "mongotail"
  gem.version       = Mongotail::VERSION
  gem.authors       = ["Wojciech Maryszczak"]
  gem.email         = ["wmaryszczak@gmail.com"]
  gem.description   = %q{puts documents from tailable custor from mongodb collection into STDOUT}
  gem.summary       = %q{puts documents from tailable custor from mongodb collection into STDOUT}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   << "mongotail"
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rake"
  gem.add_dependency "mongo" 
  gem.add_dependency "bson" 
  gem.add_dependency "bson_ext" 
end
