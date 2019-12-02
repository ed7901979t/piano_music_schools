class Piano::CLI     
   
    
   def call 
      
     puts "  "
     piano   
     #goodbye
   end
    
   def piano 
     puts "Here the piano school list"
     Piano::Pianists.final_list_display_school 
     input = "nil" 
     puts "Please enter your input"
     puts "   "
     input=gets.strip.downcase
     case input
       when "1"
         puts "Virtual Keyboard School"  
         puts "-----------------------------------------"
         Piano::Pianists.final_display_list(input)
         #piano
         puts "-----------------------------------------"
       when "2"
         puts "PLay the Piano Online"
         puts "-----------------------------------------"
         Piano::Pianists.final_display_list(input)
         #piano
         puts "                                         "
       when "3"
         puts "Virtual Keyboard School"
         puts "-----------------------------------------"
         Piano::Pianists.final_display_list(input)
         #piano
         puts "                                         "
       when "4"
         puts "Piano Synthesizer"
         puts "-----------------------------------------"
         Piano::Pianists.final_display_list(input)
         #piano
         puts "                                         "
       when "5"
         puts "Play piano.org"
         puts "-----------------------------------------"
         Piano::Pianists.final_display_list(input)
         #piano
         puts "                                         "
       when "6"
         puts "Music games, piano, guitar"
         puts "-----------------------------------------"
         Piano::Pianists.final_display_list(input)
         #piano
         puts "                                         "
       when "7"
         puts "Virtual IP piano"
         puts "-----------------------------------------"
         Piano::Pianists.final_display_list(input)
         #piano
         puts "                                         "
       when "8"
         puts "2D Play"
         puts "-----------------------------------------"
         Piano::Pianists.final_display_list(input)
         #piano
         puts "                                         "
       when "9"
         puts "VPK"
         puts "-----------------------------------------"
         Piano::Pianists.final_display_list(input)
         #piano
         puts "                                         "
         
      
         
        end 
      end
     
         
     #@piano_sites=Piano::Pianists
    #end
    #testing
    def goodbye
      puts "Goodbye"
    end
   end   
 #end
#end
 
     
