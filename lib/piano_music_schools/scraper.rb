class PianoMusicSchools::Scraper
   
  
  def self.get_piano_sites        
                   
    base_url = 'http://gnoted.com/9-websites-to-play-piano-online-for-free/'
    Nokogiri::HTML.parse(open('http://gnoted.com/9-websites-to-play-piano-online-for-free/')).title.strip   
    @data = self.data_scraper(base_url) #new
    @list_piano_site_description=@data.css("h3") 
    @list_piano_site_description.each do |rep|
      name=rep.css('a').text.strip
      school_sites=rep.css("h3").text.strip  
    @@school_list << PianoMusicSchools::Pianists.new(name, school_sites)
    end  
  end
  
  
  def self.get_piano_paragraphs1(input)
  base_url = 'http://gnoted.com/9-websites-to-play-piano-online-for-free/'
  @data = self.data_scraper(base_url) 
  if (input > 1) && (input < 5) 
     #if ((input == 2) || (input == 3) || (input == 4))
        paragraph=@data.css("p[style='text-align: left;']")[input-2]  
       
     #elsif (input > 4) && (input < 10) 
  elsif (input==5)
    paragraph=@data.css("body > section > div > p:nth-child(20)")#[input-2] 
    
  elsif (input==6)# || (input==6) || (input==7)|| (input==8) || (input==9))
    paragraph=@data.css("body > section > div > p:nth-child(23)")#[input-2] 
  elsif (input==7)# || (input==6) || (input==7)|| (input==8) || (input==9))
    paragraph=@data.css("body > section > div > p:nth-child(26)")#[input-2] 
  elsif (input==8)# || (input==6) || (input==7)|| (input==8) || (input==9))  
    paragraph=@data.css("body > section > div > p:nth-child(29)")#[input-2]
  elsif (input==9)# || (input==6) || (input==7)||   (input==8) || (input==9)) 
    paragraph=@data.css("body > section > div > p:nth-child(32)")#[input-2]       
      
      #
      #body > section > div > p:nth-child(20)
      #body > section > div > p:nth-child(20)
      #6   body > section > div > p:nth-child(23)
      #7   body > section > div > p:nth-child(26)
      #8   body > section > div > p:nth-child(29)
      #9   body > section > div > p:nth-child(32)
      #test body > section > div > p:nth-child(8) > span   
    elsif (input == 1)
      paragraph=@data.css("body > section > div > p:nth-child(8) > span")  
    else
      #input invalid     
      return ""
    
    end
    paragraph&.text     
    
    
     
  end
  #*****************************
  
    
      #to display school sites paragraphs collectin array
      def self.display_school 
    
    @@school_list.each.with_index(1) do |school, i|
    
      puts "   #{i}.   #{school.name}" 
    end
      end
      #to display school lists collectin array
      def self.display_list(input)
    index = input.to_i - 1
    puts "#{@@school_list[index].school_sites}"   
  end
  def self.final_list_display_school
    PianoMusicSchools::Scraper.get_piano_sites 
    PianoMusicSchools::Scraper.display_school  
    #Piano::Pianists.display_list 
  end
  def self.final_display_list(input)
    puts PianoMusicSchools::Scraper.get_piano_paragraphs1(input.to_i)  
    #Piano::Pianists.display_school
    #Piano::Pianists.display_list(input)      
     
  end
      
      
    
    
 
def self.data_scraper(url)
    Nokogiri::HTML(open(url))  
end
@@school_list = []
#1 user sees the list 
#2 selects a site from the list 
#3 description and the link for the site
 
#self.get_composers   
  
















end