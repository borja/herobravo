require 'rubygems'
require 'bundler'

# Fake Data Base
require './data/db'
require './model/model'


Bundler.require
require './app.rb'
run App.new