class PianoMusicSchools::Scraper
   
  #defining scraping API
  def self.get_piano_sites        
    base_url = 'http://gnoted.com/9-websites-to-play-piano-online-for-free/'
    Nokogiri::HTML.parse(open('http://gnoted.com/9-websites-to-play-piano-online-for-free/')).title.strip   
    @data = self.data_scraper(base_url) #new
    @list_piano_site_description=@data.css("h3") 
    @list_piano_site_description.each do |rep|
      name=rep.css('a').text.strip
      school_sites=rep.css("h3").text.strip 
    PianoMusicSchools::Pianists.new(name, school_sites)
    end  
    #binding.pry 
  end
  
  #API for utilizing scraping
  def self.get_piano_paragraphs1(input)
    base_url = 'http://gnoted.com/9-websites-to-play-piano-online-for-free/'
    @data = self.data_scraper(base_url) 
    if (input > 1) && (input < 5) 
     #if ((input == 2) || (input == 3) || (input == 4))
        paragraph=@data.css("p[style='text-align: left;']")[input-2]  
       #use the input number to access a corresponding element of an all[]
       #store paragraph to that instances description attribute
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
        puts "This is invalid input"
    
      end
      paragraph&.text     
  end
  
  #display_list 
  def self.display_list(input)
    index = input.to_i - 1
    puts "#{PianoMusicSchools::Pianists.all[index].school_sites}"   
  end
  
  #final_display_list
  def self.final_display_list(input)
    puts PianoMusicSchools::Scraper.get_piano_paragraphs1(input.to_i)  
  end
  
  #data_scraper    
  def self.data_scraper(url)
    Nokogiri::HTML(open(url))  
  end
end