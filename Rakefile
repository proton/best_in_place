# encoding: utf-8

require 'rubygems'
require 'rake'
require 'bundler'
Bundler::GemHelper.install_tasks

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

require 'jeweler'
require './lib/best_in_place/version.rb'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "best_in_place"
	gem.version = BestInPlace::VERSION
  gem.homepage = "http://github.com/bernat/best_in_place"
  gem.license = "MIT"
  gem.summary = %q{It makes any field in place editable by clicking on it, it works for inputs, textareas, select dropdowns and checkboxes}
  gem.description = %q{BestInPlace is a jQuery script and a Rails 3 helper that provide the method best_in_place to display any object field easily editable for the user by just clicking on it. It supports input data, text data, boolean data and custom dropdown data. It works with RESTful controllers.}
  gem.email = "bernat@itnig.net"
  gem.authors = ["Bernat Farrero", "Peter Savichev (proton)"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rdoc/task'
RDoc::Task.new do |rdoc|
  version = BestInPlace::VERSION

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "best_in_place #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

desc "Build gem"
task :build do
	puts "Regenerating gemspec"
  system "rake gemspec"
	puts "Building"
  system "gem build best_in_place.gemspec"
end