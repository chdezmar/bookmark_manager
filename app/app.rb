ENV['RACK_ENV'] ||= 'development'
# APP_ROOT = File.expand_path File.join(__dir__, "..")
# RACK_ENV = ENV['RACK_ENV']
# Bundler.require(:default, RACK_ENV)

require 'sinatra/base'
require 'sinatra/flash'
require 'sinatra/partial'

require_relative 'data_mapper_setup'

require_relative 'server'
require_relative 'controller/links'
require_relative 'controller/tags'
require_relative 'controller/sessions'
require_relative 'controller/users'
