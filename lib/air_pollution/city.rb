class AirPollution::City
  
  attr_accessor :name, :pollution
  
  def self.today
     puts <<-DOC
      1. New York, New York
      2. Los Angeles, California
      3. Cleveland, Ohio
      4. Honolulu, Hawaii
    DOC
    
    city_1 = self.new
    city_1.name = "New York, New York"
    city_1.pollution = 
    
    city_2 = self.new
    city_2.name = "Lost Angeles, California"
    city_2.pollution =
    
    city_3 = self.new
    city_3.name = "Cleveland, Ohio"
    city_3.pollution =
    
    city_4 = self.new
    city_4.name = "Honolulu, Hawaii"
    city_4.pollution =
    
    [city_1, city_2, city_3, city_4]
  end 
  
end 