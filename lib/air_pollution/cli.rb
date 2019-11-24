#Our CLI Controller

class AirPollution::CLI
  
  def call 
    puts "Air pollution data for specified cities"
    list_cities
    menu
    goodbye
  end 
  
  def list_cities
    @cities = AirPollution::City.today
  end
    
  def menu
    input = nil
    while input != "exit"
     puts "Enter the number of the city you would like to view air pollution data on. Type list to see the list of cities. Type exit to exit."
      input = gets.strip.downcase
      
        if input.to_i > 0
          puts @cities[input.to_i-1]
        elsif input == "list"
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