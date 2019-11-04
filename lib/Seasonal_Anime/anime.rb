require_relative './cli.rb'
require_relative './scraper.rb'
require 'nokogiri'
require 'open-uri'
require 'pry'

class Anime
  attr_accessor :name, :rank, :link, :score
  
  @@all = []
  
  def initialize(anime_list)
    anime_list.each {|key, value| self.send(("#{key}="), value)
    }
    @@all << self
  end
  
  def self.create_shows(array)
    array.each do |show|
      new = Anime.new(show)
    end
  end
  
  def self.all
    @@all
  end
   
end