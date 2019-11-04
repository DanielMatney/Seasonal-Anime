require_relative './anime.rb'
require_relative './cli.rb'
require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper
  
  def self.scrape_list
    html = Nokogiri::HTML(open(https://www.crunchyroll.com/simulcastcalendar))
    days = html.css(".day")
    shows = html.css(".release js-release")
    binding.pry
    days.each do |day|
      
    end
    anime_list
  end
  
end