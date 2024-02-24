# frozen_string_literal: true

require_relative "lib/invoke/version"

Gem::Specification.new do |spec|
  spec.name = "invoke"
  spec.version = Invoke::VERSION
  spec.authors = ["ingemar"]
  spec.email = ["ingemar@xox.se"]

  spec.summary = "Conditionally invoke methods on objects."
  spec.description = "Extends `Object` with `#invoke` that conditionally invokes a method on the object."
  spec.homepage = "https://github.com/ingemar/invoke"
  spec.required_ruby_version = ">= 3.1.0"

  spec.metadata["allowed_push_host"] = "https://example.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ingemar/invoke"
  spec.metadata["changelog_uri"] = "https://github.com/ingemar/invoke/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ config/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
