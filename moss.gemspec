require './lib/version'

Gem::Specification.new { |s|
    s.name = 'moss'
    s.summary = 'git-diff files independent of git repositories'
    s.description = 'See README.md for example usage'
    s.license = 'FreeBSD'

    s.version = Moss::VERSION

    s.authors = ['Andrew Pennebaker']
    s.email = 'andrew.pennebaker@gmail.com'

    s.executables = ['moss']

    s.files = Dir['lib/*.rb'] + ['LICENSE.md']
    s.homepage = 'https://github.com/mcandre/moss'

    s.required_ruby_version = '>= 2.7'

    s.add_development_dependency 'rake', '~> 13.0.1'
    s.add_development_dependency 'reek', '~> 1.3'
    s.add_development_dependency 'flay', '~> 2.5'
    s.add_development_dependency 'flog', '~> 4.3'
    s.add_development_dependency 'roodi', '~> 4.0'
    s.add_development_dependency 'churn', '~> 1.0'
    s.add_development_dependency 'cane', '~> 2.6'
    s.add_development_dependency 'excellent', '~> 2.1'
    s.add_development_dependency 'rubocop', '~> 0.49'
    s.add_development_dependency 'tailor', '~> 1.4'
    s.add_development_dependency 'rspec', '~> 3.0'
    s.add_development_dependency 'cucumber', '~> 1.3'
    s.add_development_dependency 'aspelllint', '~> 0.10'
}
