require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pp'
require_relative "common"

Dir.glob("#{File.dirname(__FILE__)}/app/models/*.rb") do |lib|
  require lib
end
ENV['MONGOID_ENV'] = 'local'
#Mongoid.load!("config/mongoid.yml")

class GetSomeThing
  include Common

  def initialize
  end

  def read_list
    puts "ok?"
  end
end

GetSomeThing.new().read_list
