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
}
