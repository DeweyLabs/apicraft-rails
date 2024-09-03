# frozen_string_literal: true

require_relative "lib/apicraft/version"

Gem::Specification.new do |spec|
  spec.name = "apicraft-rails"
  spec.version = Apicraft::VERSION
  spec.authors = ["Abhishek Sarkar"]
  spec.email = ["abhisheksarka@gmail.com"]

  spec.summary = "APICraft Rails - Simplified API Design First Development"
  spec.description = "🚀 Accelerates your development by 2-3x with an API Design First approach. Seamlessly integrates with your Rails application server — no fancy tooling or expenses required."
  spec.homepage = "https://github.com/apicraft-dev/apicraft-rails"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apicraft-dev/apicraft-rails"
  spec.metadata["changelog_uri"] = "https://github.com/apicraft-dev/apicraft-rails"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  # spec.files = Dir.chdir(File.expand_path(__dir__)) do
  #   `git ls-files -z`.split("\x0").reject do |f|
  #     (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
  #   end
  # end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "activesupport"
  spec.add_dependency "erb"
  spec.add_dependency "faker"
  spec.add_dependency "mime-types"
  spec.add_dependency "openapi_parser"
  spec.add_dependency "rack"
  spec.add_dependency "railties"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
