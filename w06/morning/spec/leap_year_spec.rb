require_relative 'spec_helper'
require_relative '../leap_year.rb'

describe Year do

  describe 'leap?' do
    it 'should say a year divisable by 4 is a leap year' do
      test_year = Year.new(1996).leap?
      expect(test_year).to eq(true)
    end
  end

  describe 'leap?' do
    it 'should say a year not divisable by 4 is a not leap year' do
      test_year = Year.new(1997).leap?
      expect(test_year).to eq(false)
    end
  end

end
