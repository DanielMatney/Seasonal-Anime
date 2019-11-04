require_relative './anime.rb'
require_relative './scraper.rb'
require 'nokogiri'
require 'open-uri'
require 'pry'

class CommandLineInterface
  
  def run
    puts "Grabbing this week's top anime for you..."
    list_anime
    binding.pry
  end
  
  def list_anime
    shows = Scraper.scrape_list
    Anime.create_shows(shows)
    Anime.all.each {|anime| puts "#{anime.rank}. #{anime.name}"}
  end
  
  
end