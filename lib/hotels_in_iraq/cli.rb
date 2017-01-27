
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
  end

  def menu
    puts "Please, Inter the hotel's number you like to see more information or type list to see our Hotel's list or type exit to exit :"
    input = nil
    while input != "exit"
      puts "Please, Inter the hotel's number you like to see more information or type list to see our Hotel's list or type exit to exit :"
      input= gets.strip.downcase
      if input.to_i > 0
        puts @hotels[input.to_i-1]
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
