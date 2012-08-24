# encoding: utf-8

$:.push File.expand_path("../lib", __FILE__)
require "tmdb-easy/version"

Gem::Specification.new do |s|
  s.name        = "tmdb-easy"
  s.version     = TmdbEasy::VERSION
  s.date        = Time.new.strftime("%Y-%m-%d")
  s.authors     = ["Bruno Henrique - Garu"]
  s.email       = ["squall.bruno@gmail.com"]
  s.homepage    = "https://github.com/brunohenrique/tmdb-easy"
  s.summary     = %q{TMDB API made easy}
  s.description = %q{Use tmdb API easily}

  s.rubyforge_project = %q{tmdb-easy}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency('rspec', '>= 2.11.0')
  s.add_development_dependency('guard', '>= 1.2.3')
  s.add_development_dependency('guard-rspec', '>= 1.2.0')
  s.add_development_dependency('ruby-debug19')
  s.add_development_dependency('vcr')

  s.add_runtime_dependency('rake', '>= 0.9.2.2')
  s.add_runtime_dependency('json', '>= 1.7.3')
  s.add_runtime_dependency('deepopenstruct', '>= 0.1.2')
end
