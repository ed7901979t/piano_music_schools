class PianoMusicSchools::CLI     
   
    
   def call 
     
     puts "Welcome to the Piano Music Schools" 
     puts "  "
     piano   
     #goodbye
   end
    
   def piano 
     puts "Here the piano school list"
      
     PianoMusicSchools::CLI.final_list_display_school 
     puts "Select school you would like to read more about. Or type exit"
    input = ""
    while input != "exit"
      input = gets.strip
     #input = "nil" 
     puts "Please enter your input"
     puts "   "
     #input=gets.strip.downcase 
      
     case input
       when "1"
         #puts "Virtual Keyboard School"  
         puts PianoMusicSchools::Pianists.all[0].name 
         puts "-----------------------------------------"
         PianoMusicSchools::Scraper.final_display_list(input)
         #piano
         puts "-----------------------------------------"
       when "2"
         puts "PLay the Piano Online"
         puts "-----------------------------------------"
         PianoMusicSchools::Scraper.final_display_list(input)
         #piano
         puts "                                         "
       when "3"
         puts "Virtual Keyboard School"
         puts "-----------------------------------------"
         PianoMusicSchools::Scraper.final_display_list(input)
         #piano
         puts "                                         "
       when "4"
         puts "Piano Synthesizer"
         puts "-----------------------------------------"
         PianoMusicSchools::Scraper.final_display_list(input)
         #piano
         puts "                                         "
       when "5"
         puts "Play piano.org"
         puts "-----------------------------------------"
         PianoMusicSchools::Scraper.final_display_list(input)
         #piano
         puts "                                         "
       when "6"
         puts "Music games, piano, guitar"
         puts "-----------------------------------------"
         PianoMusicSchools::Scraper.final_display_list(input)
         #piano
         puts "                                         "
       when "7"
         puts "Virtual IP piano"
         puts "-----------------------------------------"
         PianoMusicSchools::Scraper.final_display_list(input)
         #piano
         puts "                                         "
       when "8"
         puts "2D Play"
         puts "-----------------------------------------"
         PianoMusicSchools::Scraper.final_display_list(input)
         #piano
         puts "                                         "
       when "9"
         puts "VPK"
         puts "-----------------------------------------"
         PianoMusicSchools::Scraper.final_display_list(input)
         #piano
         puts "                                         "
         else
            puts "Not sure what you mean! Please select the description of music school you'd like to read more about, or type exit."
            puts ""
         end
         puts "Please enter your input"
         
      
         
        end 
      end
      
       def self.display_school 
    
    PianoMusicSchools::Pianists.all.each.with_index(1) do |school, i|
    
      puts "   #{i}.   #{school.name}" 
    end
      end
      
      def self.final_list_display_school
    PianoMusicSchools::Scraper.get_piano_sites 
    PianoMusicSchools::CLI.display_school  
    #Piano::Pianists.display_list 
  end
      
      
     
         
     #@piano_sites=Piano::Pianists
    #end
    #testing
    def goodbye
      puts "Goodbye. Thank you for using program."
    end
   end   
 #end
#end
 
     
