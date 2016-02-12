require 'rubygems'
require 'bundler'
require 'require_all'
require 'yaml'

# Fake Data Base
require_all './data'

# DB Class Conversor
require_all './model'

Bundler.require
require './app.rb'
run App.new
