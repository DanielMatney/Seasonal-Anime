require_relative './anime.rb'
require_relative './cli.rb'
require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper
  
 def self.scrape_list
    html = Nokogiri::HTML(open("https://myanimelist.net"))
    shows = html.css(".ranking-digest")
    binding.pry
    days.each do |day|
      
    end
    anime_list
  end
  
end