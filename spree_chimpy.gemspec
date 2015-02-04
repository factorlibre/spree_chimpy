# coding: utf-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_chimpy'
  s.version     = '1.3.2'
  s.summary     = 'MailChimp/Spree integration using the mailchimp gem'
  s.description = s.summary
  s.required_ruby_version = '>= 1.9.3'

  s.author       = 'Joshua Nussbaum'
  s.email        = 'josh@godynamo.com'
  s.homepage     = 'http://www.godynamo.com'
  s.license      = %q{BSD-3}

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- spec/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree', '~> 2.4'
  s.add_dependency 'mailchimp', '>= 0.0.9'

  s.add_development_dependency 'rspec-rails', '~> 2.14'
  s.add_development_dependency 'capybara', '~> 2.1.0'
  s.add_development_dependency 'selenium-webdriver', '~> 2.44.0'
  s.add_development_dependency 'factory_girl', '~> 4.2'
  s.add_development_dependency 'shoulda-matchers', '~> 2.2'
  s.add_development_dependency 'sqlite3', '~> 1.3.7'
  s.add_development_dependency 'simplecov', '~> 0.7.1'
  s.add_development_dependency 'database_cleaner', '~> 1.0.1'
  s.add_development_dependency 'fuubar', '>= 0.0.1'
  s.add_development_dependency 'i18n-spec', '~> 0.4.0'
  s.add_development_dependency 'coffee-rails', '3.2.2'
  s.add_development_dependency 'sass-rails', '3.2.6'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'launchy'
  s.add_development_dependency 'coveralls'
  s.add_development_dependency 'minitest'
end
