require 'mechanize'
require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pp'
require_relative "common"

class GetSomeThing
  include Common

  def initialize
  end

  def read_list
    puts "ok?"
  end

  def download_pic
#    http://yy.lehazi.com/updata/section?id=18
    apps = %w[book volume chapter section]
    101.upto(200).each do |i|
      apps.each do |app|
        puts url = "http://yy.lehazi.com/updata/#{app}?id=#{i}"
        puts safe_open_img(url)
        sleep 5
      end
    end
  end

end

GetSomeThing.new().download_pic
