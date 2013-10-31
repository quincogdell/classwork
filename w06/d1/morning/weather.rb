class Weather
  @@clothing_options = {
      hot: "shorts",
      moderate: "long sleeves",
      chilly: "sweater",
      cold: "jacket"
    }

  attr_accessor :temperature

  def current_weather
    case temperature
    when (32..60)
      "chilly"
    when (60..85)
      "moderate"
    when (86..200)
      "hot"
    else
      "cold"
    end
  end

  def suggest_clothing(temperature_input)
    self.temperature = temperature_input
    case current_weather
    when "chilly"
      @@clothing_options[:chilly]
    when "moderate"
      @@clothing_options[:moderate]
    when "hot"
      @@clothing_options[:hot]
    else
      @@clothing_options[:cold]
    end
  end

end
