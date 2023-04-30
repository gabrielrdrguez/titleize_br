# frozen_string_literal: true

require_relative 'lib/titleize_br/version'

Gem::Specification.new do |spec|
  spec.name = 'titleize_br'
  spec.version = TitleizeBr::VERSION
  spec.authors = ['Gabriel Rodriguez']
  spec.email = ['gabriel.rdrguez@gmail.com']

  spec.summary = 'Rails String#titleize but with brazilian ABNT rules.'
  spec.homepage = 'https://github.com/gabrielrdrguez/titleize_br'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.6.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/gabrielrdrguez/titleize_br'
  spec.metadata['changelog_uri'] = 'https://github.com/gabrielrdrguez/titleize_br/blob/main/CHANGELOG.md.'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  spec.add_dependency 'activesupport', '> 4'

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
