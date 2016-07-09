require 'rubygems'
require 'bundler'
require 'require_all'
require 'yaml'

require_all './data'  # Fake Data Base
require_all './model' # DB Class Conversor
require_all './lib'   # Metaprogramming lib utils

Bundler.require
require './app.rb'
run App.new
