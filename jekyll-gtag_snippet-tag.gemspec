# frozen_string_literal: true

require_relative "lib/jekyll-gtag_snippet/version"

Gem::Specification.new do |spec|
  spec.name = "jekyll-gtag_snippet"
  spec.version = Jekyll::GtagSnippet::VERSION
  spec.authors = ["cc-kawakami"]
  spec.email = ["kawakami-moeki@colorfulcompany.co.jp"]

  spec.summary = "Google Analytic gtag.js snippet tag for Jekyll"
  spec.description = "Google Analytic gtag.js snippet tag for Jekyll"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["source_code_uri"] = "https://github.com/cc-kawakami/jekyll-gtag_snippet-tag"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "gtag_snippet"
  spec.add_runtime_dependency "jekyll"
end
