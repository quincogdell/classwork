QUIZ_TOPICS = ["ruby", "rspec", "testing", "arrays", "objects"]
require 'pry'
# create a Quiz class.

class Quiz

  def initialize
    @numbers = []
    @trash = []
  end

  def add(input)
    if input.is_a? Fixnum
      add_num(input)
    elsif input.class == Array
      input.each do |item|
        if item.class == Fixnum
          add_num(item)
        else
          add_trash(item)
        end
      end
    else
      add_trash(input)
    end
  end

  def add_num (number)
    @numbers << number
  end

  def add_trash(trash)
    @trash << trash
  end

  def trash
    @trash
  end

  def numbers
    @numbers.join(', ')
  end

  def count(input)
    @numbers.count(input)
  end

  def rotate(input)
    @numbers.rotate!(input)
  end

  def count_even
    even_num_count = 0
    @numbers.each do |number|
      if number % 2 == 0
        even_num_count += 1
      end
    end
    even_num_count
  end

# Phil's example - good use of recursion
  # def add(item)
  #   if item.is_a? Integer
  #     @numbers << item
  #   elseif item.is_a? Array
  #     item.each {|n| self.add(n)}
  #   else
  #     @trash << item
  #   end
  # end

end







# We can add numbers to it
# quiz = Quiz.new
# quiz.add(5)
# quiz.add(3)

# We can see a string of numbers we've added
# quiz.numbers => "5, 3"

# We can only add numbers
# quiz.add("7ß  ")
# quiz.numbers => "5, 3"

# Or arrays of numbers
# quiz.add([4, 2, true, 9])
# quiz.numbers => "5, 3, 4, 2, 9"

# We can't access the array directly
# quiz.numbers.push(5)
# => undefined method `push'

# Trash returns anything we've tried to add that's not a number.
# quiz.trash => ["7", true]

# Returns the number of occurences of a specified number
# quiz.numbers => "5, 3, 4, 3"
# quiz.count(3) => 2

# Takes a specified length of an array starting from the left and moves it to
# the tail end
# quiz.numbers => "5, 3, 9, 4, 3"
# quiz.rotate(2)
# quiz.numbers => "9, 4, 3, 5, 3"

# Prints out the number of even numbers in the array.
# quiz.numbers => "9, 4, 3, 5, 3"
# quiz.count_events => 1
