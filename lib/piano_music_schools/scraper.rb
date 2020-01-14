class PianoMusicSchools::Scraper
   
  #defining scraping API
  def self.get_piano_sites        
    base_url = 'http://gnoted.com/9-websites-to-play-piano-online-for-free/'
    Nokogiri::HTML.parse(open('http://gnoted.com/9-websites-to-play-piano-online-for-free/')).title.strip   
    @data = self.data_scraper(base_url) #new
    @list_piano_site_description=@data.css("h3") 
    @list_piano_site_description.each do |rep|
      # binding.pry 
      name=rep.css('a').text.strip
      school_sites=rep.css("h3").text.strip 
      description_element = rep.next_sibling.next_sibling.next_sibling.next_sibling
      if description_element && name.length > 1
        description = description_element.text.strip
        PianoMusicSchools::Pianists.new(name, school_sites, description)
      end
    end  
    #
  end
 
  #data_scraper    
  def self.data_scraper(url)
    Nokogiri::HTML(open(url))  
  end
end
  
  