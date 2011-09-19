require 'rubygems'
require 'bundler/setup'
require 'rufus/scheduler'
require 'sinatra'

scheduler = Rufus::Scheduler.start_new

scheduler.every '5s' do
  puts "times up"
end

get '/' do
  'hi'
end