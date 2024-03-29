# frozen_string_literal: true

require_relative "lib/megabytes"

Gem::Specification.new do |spec|
  spec.name = "megabytes"
  spec.version = Megabytes::VERSION
  spec.authors = ["Julik Tharkhanov", "grdw"]
  spec.email = ["me@julik.nl", "gerard@wetransfer.com"]

  spec.summary = "Byte size formatter for when ActiveSupport is too much."
  spec.description = "Byte size formatter for when ActiveSupport is too much."
  spec.homepage = "https://github.com/wetransfer/megabytes"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/wetransfer/megabytes"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", ">= 2.2.10"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 0.82"
end
