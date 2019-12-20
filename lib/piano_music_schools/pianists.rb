class PianoMusicSchools::Pianists 
  
  attr_accessor :name, :school_sites, :description
  @@school_list = []
  
  def initialize(name=nil, school_sites=nil, description = nil)
    @name=name
    @description = description
    @school_sites=school_sites 
    @@school_list << self
  end
  
  def self.all 
    @@school_list  
  end
  

 
end     
