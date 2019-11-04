require_relative '.../config/environment.rb'

class Anime
  attr_accessor :name, :availability, :day, :time, :show_link
  
  @@all = []
  
  def initialize(anime_list)
    anime_list.each {|key, value| self.send(("#{key}="), value)
    }
    @@all << self
  end
  
end