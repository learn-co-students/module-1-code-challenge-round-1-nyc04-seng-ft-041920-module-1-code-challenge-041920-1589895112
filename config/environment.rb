# require the Bundler module
require 'bundler/setup'

# require all gems defined in the Gemfile
Bundler.require

# require all files in the top-level app directory
require_rel '../app'

# require_relative '..app/models/movie.rb'
# require_relative '..app/models/viewer.rb'
# require_relative '..app/models/review.rb'