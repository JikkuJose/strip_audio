# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'strip_audio/version'

Gem::Specification.new do |spec|
  spec.name          = "strip_audio"
  spec.version       = StripAudio::VERSION
  spec.authors       = ["Jikku Jose"]
  spec.email         = ["jikkujose@gmail.com"]
  spec.summary       = %q{Strips audio from video files.}
  spec.description   = %q{A simple wrapper for ffmpeg to strip audio from video files.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "guard"
end
