lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
#require 'daily_deal/version'

Gem::Specification.new do |spec|
  spec.name          = "Seasonal-Anime"
  spec.version       = "0.1.1"
  spec.authors       = ["aviflombaum"]
  spec.email         = ["avi@flombaum.com"]
  spec.summary       = "Summary"
  spec.description   = "Description"
  spec.homepage      = github.com/DanielMatney/Seasonal-Anime
  spec.license       = "MIT"
  spec.require_paths = ["lib"]

end