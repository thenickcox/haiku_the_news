require 'sinatra'
require 'active_record'
require 'pathname'
require 'yaml'

env = ENV['RACK_ENV'] || 'development'

ActiveRecord::Base.configurations = YAML.load_file('config/database.yml')
ActiveRecord::Base.establish_connection(ActiveRecord::Base.configurations[env])
