class PianoMusicSchools::Pianists 
  
  attr_accessor :name, :school_sites 
  @@school_list = []
  
  def initialize()
    @name=name
    @school_sites=school_sites 
  end
  
  def self.all 
    @@school_list  
  end
  

 
end     

