
require 'pry'
require 'nokogiri'
require 'open-uri'
require_relative "piano_music_schools/version" 
require_relative 'piano_music_schools/cli'
require_relative 'piano_music_schools/pianists'    
require_relative 'piano_music_schools/scraper'  
module PianoMusicSchools
  class Error < StandardError; end


end
