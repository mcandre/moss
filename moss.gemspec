require './lib/version'

Gem::Specification.new { |s|
  s.name = 'moss'
  s.summary = 'git-diff files independent of git repositories'
  s.description = 'See README.md for example usage'
  s.license = 'FreeBSD'

  s.version = Moss::VERSION
  s.date = '2014-01-08'

  s.authors = ['Andrew Pennebaker']
  s.email = 'andrew.pennebaker@gmail.com'

  s.executables = ['moss']

  s.files = Dir['lib/*.rb'] + ['LICENSE.md']
  s.homepage = 'https://github.com/mcandre/moss'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'reek'
  s.add_development_dependency 'flay'
  s.add_development_dependency 'flog'
  s.add_development_dependency 'roodi'
  s.add_development_dependency 'churn'
  s.add_development_dependency 'cane'
  s.add_development_dependency 'excellent'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'tailor'
  s.add_development_dependency 'guard'
  s.add_development_dependency 'guard-shell'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'cucumber'
}
