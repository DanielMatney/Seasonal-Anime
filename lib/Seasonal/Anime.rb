#require "Seasonal/Anime/version.rb"
require_relative 'Seasonal/Anime/cli.rb'
require_relative 'Seasonal/Anime/scraper.rb'
require_relative 'Seasonal/Anime/anime.rb'
require 'pry'
require 'nokogiri'
require 'open-uri'

module Seasonal
  module Anime
    class Error < StandardError; end
    # Your code goes here...
  end
end
