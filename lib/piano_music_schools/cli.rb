class PianoMusicSchools::CLI     
   
   #calling piano function and welcome message
def call 
     puts "Welcome to the Piano Music Schools" 
     puts "  "
     #piano function 
     piano  
     #goodbye function
     goodbye
end
   
   #defining piano function  
def piano 
     puts "Here the piano school list"
     #displaying school list 
     PianoMusicSchools::CLI.final_list_display_school 
     puts "Select school you would like to read more about. Or type exit"
     input = ""
    while input != "exit"
      input = gets.strip 
      #input = "nil" 
      puts "Please enter your input"
      #puts "   "
      #input = gets.strip
      #input=input.to_i
      #input=gets.strip.downcase 
       
      #if input > 0 && input < 10  
      # puts PianoMusicSchools::Pianists.all[input-1]
     case input
       when "1"
         puts "Virtual Keyboard School"  
         #puts PianoMusicSchools::Pianists.all[0].name 
         #binding pry 
         puts "-----------------------------------------"
         PianoMusicSchools::CLI.final_display_list(input)
         #piano
         #puts "-----------------------------------------"
       when "2"
         puts "PLay the Piano Online"
         #testing
         puts PianoMusicSchools::Pianists.all[1].name 
         puts "-----------------------------------------"
         #testing
         puts "-----------------------------------------"
         PianoMusicSchools::CLI.final_display_list(input)
         #piano
         puts "                                         "
       when "3"
         puts "Virtual Keyboard School"
         #testing
         puts PianoMusicSchools::Pianists.all[2].name 
         puts "-----------------------------------------"
         #testing
         puts "-----------------------------------------"
         PianoMusicSchools::CLI.final_display_list(input)
         #piano
         puts "                                         "
       when "4"
         puts "Piano Synthesizer"
         #testing
         puts PianoMusicSchools::Pianists.all[3].name 
         puts "-----------------------------------------"
         #testing
         puts "-----------------------------------------"
         PianoMusicSchools::CLI.final_display_list(input)
         #piano
         puts "                                         "
       when "5"
         puts "Play piano.org"
         #testing
         puts PianoMusicSchools::Pianists.all[4].name 
         puts "-----------------------------------------"
         #testing
         puts "-----------------------------------------"
         PianoMusicSchools::CLI.final_display_list(input)
         #piano
         puts "                                         "
       when "6"
         puts "Music games, piano, guitar"
         #testing
         puts PianoMusicSchools::Pianists.all[5].name 
         puts "-----------------------------------------"
         #testing
         puts "-----------------------------------------"
         PianoMusicSchools::CLI.final_display_list(input)
         #piano
         puts "                                         "
       when "7"
         puts "Virtual IP piano"
         #testing
         puts PianoMusicSchools::Pianists.all[6].name 
         puts "-----------------------------------------"
         #testing
         puts "-----------------------------------------"
         PianoMusicSchools::CLI.final_display_list(input)
         #piano
         puts "                                         "
       when "8"
         puts "2D Play"
         puts PianoMusicSchools::Pianists.all[7].name 
         #testing
         puts "-----------------------------------------"
         #testing
         puts "-----------------------------------------"
         PianoMusicSchools::CLI.final_display_list(input)
         #piano
         puts "                                         "
       when "9"
         puts "VPK"
         #testing
         puts PianoMusicSchools::Pianists.all[8].name 
         puts "-----------------------------------------"
         #testing
         puts "-----------------------------------------"
         PianoMusicSchools::CLI.final_display_list(input)
         #piano
         puts "                                         "
         else
            puts "Not sure what you mean! Please select the description of music school you'd like to read more about, or type exit."
            puts ""
         end
            puts "Please enter your input"
         end 
  end
      
       #defining display_school
  def self.display_school 
          PianoMusicSchools::Pianists.all.each.with_index(1) do |school, i|
    
          puts "   #{i}.   #{school.name}" 
          end
  end
      
       #defining final_list_display_school
       def self.final_list_display_school
          PianoMusicSchools::Scraper.get_piano_sites 
          PianoMusicSchools::CLI.display_school  
       end
  #*****************************************
       def self.display_list(input)
    index = input.to_i - 1
    puts "#{PianoMusicSchools::Pianists.all[index].school_sites}"   
  end
  
  #final_display_list
  def self.final_display_list(input)
    index = input.to_i - 1
    puts "#{PianoMusicSchools::Pianists.all[index].description}"   

#    puts PianoMusicSchools::Scraper.get_piano_paragraphs1(input.to_i)  
  end
  #*********************************************
      
       #defining goodbye function 
       def goodbye
          puts "Goodbye. Thank you for using program."
       end
  end   
  
 
     
