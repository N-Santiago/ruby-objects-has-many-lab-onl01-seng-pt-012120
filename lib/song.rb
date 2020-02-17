class Song 
   
   attr_accessor :artist, :name  
   
   @@all = []
   
   def initialize(name)
     @name = name
     @@all << self
   end
   
  def self.all
    @@all 
  end 
  
   def artist_name
     if artist == nil 
       return
       nil
     else 
       artist.name 
     end #return nil if song doesn't have artist, else will return the name of the artist 
   end 
 end 
    