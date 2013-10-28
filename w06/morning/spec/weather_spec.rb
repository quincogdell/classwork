require_relative 'spec_helper'
require_relative '../weather.rb'

describe Weather do

  describe 'the current weather' do
    it "should say what the current weather is" do
     weather_now = Weather.new
     weather_now.temperature = 90
     expect(weather_now.current_weather).to eq("hot")
    end
  end

  describe 'what you should wear' do
    it "should tell you what to wear" do
      weather_now = Weather.new
      clothing = weather_now.suggest_clothing(40)
      expect(clothing).to eq("sweater")
    end
  end


end
