class HotelsInIraq::CLI

  def call
    puts "
          ________________________________________________________________
          |                                                      ____    |
          |         <<   WELCOMETOTHEBESTHOTELSINIRAQ    >>     |    |   |
          |              _____________________________          |    |   |
          |                   ____________                   ___|    |__ |
          |                   |          |                   |          ||
          |                   |      ____|______          ___|___       ||
          |     ______________|__    |         |_________|      |       ||
          |     |               |    |         |         |      |       ||
          |     |               |    |         |         |      |       ||
          |     |               |    |         |         |      |       ||
          |     |               |____|         |         |      |       ||
          |_____|______________________________|_________|______|_______||"
         puts ".                                                                 ."
     best_hotels
     menu
     finish
  end
  def best_hotels
    @hotels = HotelsInIraq::Hotel.today
    @hotels.each_with_index do |hotel, i|
      puts "#{i+1}. #{hotel.name} - #{hotel.location} - #{hotel.rate}"
    end
  end

  def menu
    puts "Please, Inter the hotel's number you like to see more information or type list to see our Hotel's list or type exit to exit :"
    input = nil
    while input != "exit"
      input= gets.strip.downcase
      if input.to_i > 0
        the_hotel= @hotels[input.to_i-1]
        puts "#{the_hotel.name} - #{the_hotel.location} - #{the_hotel.rate}"
        puts "Please, Inter the hotel's number you like to see more information or type list to see our Hotel's list or type exit to exit :"
      elsif input == "list"
        best_hotels
      else
        puts "not provided ....type a valid number"
      end
    end
  end

  def finish
    puts "thanks for "
  end
end
