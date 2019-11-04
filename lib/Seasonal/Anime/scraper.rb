require_relative '..../config/environment.rb'

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