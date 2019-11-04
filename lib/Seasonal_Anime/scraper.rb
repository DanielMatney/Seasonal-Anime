require_relative './anime.rb'
require_relative './cli.rb'
require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper
  
 def self.scrape_list
    html = Nokogiri::HTML(open("https://myanimelist.net/topanime.php?type=airing"))
    shows = html.css(".ranking-list")
    show_array = []
    shows.each do |show|
      show_hash = {
        rank: show.css(".lightLink").text,
        name: show.css(".hoverinfo_trigger").text.strip,
        score: show.css(".text").css(".on").text,
        link: show.css("a")[0]["href"]
      }
      show_array << show_hash
    end
    show_array
  end
  
  
end