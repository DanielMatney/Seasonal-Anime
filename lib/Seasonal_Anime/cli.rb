require_relative './anime.rb'
require_relative './scraper.rb'
require 'nokogiri'
require 'open-uri'
require 'pry'

class CommandLineInterface
  
  def run
    puts "Grabbing this week's upcoming anime for you..."
    list_anime
    puts "Please enter the day you wish to view in more detail:"
    
  end
  
  def list_anime
    Scraper.scrape_list
  end
  
  
end