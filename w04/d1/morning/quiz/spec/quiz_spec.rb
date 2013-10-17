require_relative '../quiz'
require "spec_helper"
#  __    __    _______  __    __
# |  |  |  |  /  _____||  |  |  |
# |  |  |  | |  |  __  |  |__|  |
# |  |  |  | |  | |_ | |   __   |
# |  `--'  | |  |__| | |  |  |  |
#  \______/   \______| |__|  |__|

describe "a quiz" do
  it "should be about Ruby and Testing in Rspec" do
    expect(QUIZ_TOPICS).to include("ruby")
    expect(QUIZ_TOPICS).to include("rspec")
    expect(QUIZ_TOPICS).to include("testing")
  end
end

describe "question 1" do
  it "has an add method" do
    quiz = Quiz.new
    quiz.add(5)
    expect(quiz.numbers).to eq("5")
  end
end


describe "question 2" do
  it "should return a string of numbers" do
    quiz = Quiz.new
    quiz.add(5)
    quiz.add(3)
    expect(quiz.numbers).to eq("5, 3")
  end
end
# more in quiz.rb!

describe "question 3" do
  it "should only add numbers" do
    quiz = Quiz.new
    quiz.add(5)
    quiz.add(3)
    quiz.add("7")
    expect(quiz.numbers).to eq("5, 3")
  end
end

describe "question 4" do
  it "should numbers elements of a given array" do
    quiz = Quiz.new
    quiz.add(5)
    quiz.add(3)
    quiz.add([4, 2, true, 9])
    expect(quiz.numbers).to eq("5, 3, 4, 2, 9")
  end
end

describe "question 5" do
  it "should not access the numbers array directly" do
    quiz = Quiz.new
    quiz.add(5)
    expect {quiz.numbers.push(5)}.to raise_error
  end
end

describe "question 6" do
  it "show items added to trash" do
    quiz = Quiz.new
    quiz.add(5)
    quiz.add("7")
    quiz.add([4, 2, true, 9])
    expect(quiz.trash).to eq(["7", true])
  end
end

describe "question 7" do
  it "should return the number of occurences of a specific number" do
    quiz = Quiz.new
    quiz.add(5)
    quiz.add(3)
    quiz.add(5)
    expect(quiz.count(5)).to eq(2)
  end
end

describe "question 8" do
  it "Takes a specified length of an array starting from the left and moves it to the tail end" do
    quiz = Quiz.new
    quiz.add([5, 3, 9, 4, 3])
    quiz.rotate(2)
    expect(quiz.numbers).to eq("9, 4, 3, 5, 3")
  end
end

describe "question 9" do
  it "should print out the number of even numbers in the array" do
    quiz = Quiz.new
    quiz.add([5, 3, 9, 4, 3])
    expect(quiz.count_even).to eq(1)
  end
end
















