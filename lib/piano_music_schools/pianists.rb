class PianoMusicSchools::Pianists 
  
  attr_accessor :name, :school_sites 
  @@school_list = []
  
  def initialize(name=nil, school_sites=nil)
    @name=name
    @school_sites=school_sites 
    @@school_list << self
  end
  
  def self.all 
    @@school_list  
  end
  

 
end     

