Gem::Specification.new do |s|
  s.name        = 'hash-dot'
  s.version     = '0.0.2'
  s.date        = '2015-03-02'
  s.summary     = "Adds the JavaScript hash syntax to ruby"
  s.description = "Adds the JavaScript dot notation for accessing hash keys to ruby, so you can do my_hash.key1"
  s.authors     = ["Ben Porter"]
  s.email       = 'BenjaminPorter86@gmail.com'
  s.files       = ["lib/hash-dot.rb"]
  s.homepage    =
    'http://rubygems.org/gems/hash-dot'
  s.license       = 'MIT'
  s.add_development_dependency "rspec"
end
