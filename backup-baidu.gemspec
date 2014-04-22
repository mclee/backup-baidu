# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "backup-baidu"
  spec.version       = "0.3.0"
  spec.authors       = ["DylanDeng", "George Lee"]
  spec.email         = ["dylan@beansmile.com", "mclee@foolme.net"]
  spec.description   = %q{pan.baidu.com Storage support for Backup}
  spec.summary       = %q{pan.baidu.com Storage support for Backup}
  spec.homepage      = "https://github.com/mclee/backup-baidu"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec", "~> 2.6"

  spec.add_dependency "backup", ">= 3.7.0"
  spec.add_dependency "api4baidu", ">= 1.0.1"
  spec.add_dependency "oauth2", ["~> 0.9.2"]
  spec.add_dependency "json", ["~> 1.8.0"]
end
