require 'open-uri'
require 'timeout'
require 'logger' 
module Common

  def safe_open_img(url, retries = 5, sleep_time = 0.51, headers ={})
    begin
      open(url, 'rb') 
    rescue StandardError,Timeout::Error, SystemCallError, Errno::ECONNREFUSED 
      puts $!  
      retries -= 1  
      if retries > 0  
        sleep sleep_time and retry  
      else  
        ""
      end
    end
  end

  class IoFactory
    attr_reader :file
    def self.init file
      @file = file
      if @file.nil?
        puts 'Can Not Init File To Write'
        exit
      end #if
      File.open @file, 'a'
    end     
  end #IoFactory


end


