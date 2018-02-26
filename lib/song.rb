require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def artist=(artist)
    @artist = artist
  end
  
  extend Memorable, Findable
  include Paramable

  def self.all
    @@songs
  end
end
