Gem::Specification.new do |s|
  s.name        = 'acts_as_time_racing'
  s.version     = '0.3'
  s.date        = '2013-06-19'
  s.summary     = File.read("README.markdown").split(/===+/)[1].strip.split("\n")[0]
  s.description = s.summary
  s.authors     = ["mvj3"]
  s.email       = 'mvjome@gmail.com'
  s.homepage    = 'https://github.com/eoecn/acts_as_time_racing'

  s.files = `git ls-files`.split("\n")
end
