Gem::Specification.new do |s|
  s.name        = 'simple_gemset'
  s.version     = '0.0.1'
  s.date        = '2011-07-19'
  s.summary     = "Generator for simple and agile .rvmrc files"
  s.description = "Generator for simple and agile .rvmrc files"
  s.authors     = ["Gonzalo Rodriguez-Baltanas Diaz"]
  s.email       = 'siotopo@gmail.com'
  s.files       = []  
  s.executables << 'simple_gemset'
  s.homepage    = 'https://github.com/nerian/simple_gemset'   
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'thor'
  s.add_development_dependency 'wrong'
  s.add_runtime_dependency 'thor'
end