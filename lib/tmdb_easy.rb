require 'rubygems'
require 'bundler'

Bundler.require

require 'net/http'
require 'uri'
require 'json'
require 'deepopenstruct'

#Load files in the correct order, not in alphabetical natural order. :)
required_files = ['base.rb',
                  'search.rb',
                  'genre.rb']

required_files.each do |file|
  require File.expand_path(File.join(File.dirname(__FILE__), 'tmdb_easy', file))
end

