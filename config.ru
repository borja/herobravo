require 'rubygems'
require 'bundler'
require 'require_all'
require 'yaml'

# Fake Data Base
require_all './data'

require './model/model'

Bundler.require
require './app.rb'
run App.new
