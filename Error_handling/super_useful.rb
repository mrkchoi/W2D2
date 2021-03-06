# PHASE 2
def convert_to_int(str)
  begin
    Integer(str)
  rescue ArgumentError => e

    print "Rescued from\n #{e.backtrace.join("\n\n")}"
    print "\n\n"
    nil
  end
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else 
    if maybe_fruit=="coffee"
      raise CoffeeError 
    end
    raise NonCoffeeError
  end 
  
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  
  
  begin
    puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp
    reaction(maybe_fruit) 
  rescue CoffeeError
    p "Yay that was coffe try again. that wasn't a fruit"
    retry
  rescue NonCoffeeError
    p "you failed no more tries"
  end
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    raise BestiesErrors.new('Def not besties. Needs more time.') if yrs_known <= 5
    raise NameMissingError.new("Can't leave name blank!") if name.length <= 0
    raise PastTimeError.new('Really, don\'t have a fav pasttime?') if fav_pastime.length <= 0
    
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end

class CoffeeError < StandardError; end
class NonCoffeeError < StandardError; end
class BestiesErrors < Exception; end
class NameMissingError < StandardError; end
class PastTimeError < StandardError; end
