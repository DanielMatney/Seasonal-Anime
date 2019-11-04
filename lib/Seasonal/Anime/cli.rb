require_relative '..../config/environment.rb'

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