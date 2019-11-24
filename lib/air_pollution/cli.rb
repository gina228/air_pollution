#Our CLI Controller

class AirPollution::CLI
  
  def call 
    puts "Air pollution data for specified cities"
    list_cities
    menu
    goodbye
  end 
  
  def list_cities
    puts <<-DOC
      1. New York, New York
      2. Los Angeles, California
      3. Cleveland, Ohio
      4. Honolulu, Hawaii
    DOC
  end
    
  def menu
    input = nil
    while input != "exit"
     puts "Enter the number of the city you would like to view air pollution data on. Type list to see the list of cities. Type exit to exit."
      input = gets.strip.downcase 
      case input
      when "1"
        puts "NY"
      when "2"
        puts "CA"
      when "3"
        puts "OH"
      when "4"
        puts "HI"
      when "list"
        list_cities
      else
        puts "Not a valid entry."
      end 
    end
  end
  
  def goodbye
    puts "Goodbye!"
  end
  
end 