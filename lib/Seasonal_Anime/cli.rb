require_relative './anime.rb'
require_relative './scraper.rb'
require 'nokogiri'
require 'open-uri'
require 'pry'

class CommandLineInterface
  
  def run
    puts "Grabbing this week's top anime for you..."
    shows = Scraper.scrape_list
    list_anime(shows)
    select_show(shows)
  end
  
  def list_anime(shows)
    Anime.create_shows(shows)
    Anime.all.each {|anime| puts "#{anime.rank}. #{anime.name}"}
  end
  
  def select_show(shows)
    puts "Type the rank of the anime you'd like info on or 'exit' to exit."
    input = gets.chomp
    number = input.to_i
    if number >= 1 && number <= 50
      show = shows.detect{|h| h[:rank] == input}
      puts "Here is the info for #{show[:name]}:"
      puts "Rank: #{show[:rank]}"
      puts "Rating: #{show[:score]}"
      puts "Full Page: #{show[:link]}"
      select_show(shows)
    elsif input == "exit"
      return
    else puts "Please input a valid number between 1 and 50."
      select_show(shows)
    end
  end
  
end