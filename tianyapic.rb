require 'mechanize'
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

  def download_pic
#    url = "http://img3.laibafile.cn/p/m/180695272.jpg"
    url = "http://img3.laibafile.cn/p/m/180688971.jpg"

    puts url
    agent = Mechanize.new
    page = agent.get(url, [], referer = "http://bbs.tianya.cn/").save
    page = agent.get(url).save


  end

end

GetSomeThing.new().download_pic
