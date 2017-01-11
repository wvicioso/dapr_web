module ApplicationHelper
  require 'open-uri'
  require 'json'

  def current_user
  end

  def get_temp
    open('http://api.wunderground.com/api/ae341c3c3cc0ff78/geolookup/conditions/q/NY/New_York.json') do |f|
      json_string = f.read
      parsed_json = JSON.parse(json_string)
      temp_f = parsed_json['current_observation']['temp_f']
    end
  end

  def get_weather
    open('http://api.wunderground.com/api/ae341c3c3cc0ff78/geolookup/conditions/q/NY/New_York.json') do |f|
      json_string = f.read
      parsed_json = JSON.parse(json_string)
      weather = parsed_json['current_observation']['weather']
    end
  end

  def get_wind
    open('http://api.wunderground.com/api/ae341c3c3cc0ff78/geolookup/conditions/q/NY/New_York.json') do |f|
      json_string = f.read
      parsed_json = JSON.parse(json_string)
      wind_mph = parsed_json['current_observation']['wind_mph']
    end
  end



  def get_location
    open('http://api.wunderground.com/api/ae341c3c3cc0ff78/geolookup/conditions/q/NY/New_York.json') do |f|
      json_string = f.read
      parsed_json = JSON.parse(json_string)
      location = parsed_json['location']['city']
    end
  end


  def get_outfits(temp)
    men_clothes = {70 => ["https://s-media-cache-ak0.pinimg.com/564x/19/07/ba/1907bac168c55b76e14831c37b114a81.jpg",
                          "https://s-media-cache-ak0.pinimg.com/736x/1f/23/86/1f2386af88ff5a2926db519fb97145ec.jpg",
                          "https://s-media-cache-ak0.pinimg.com/736x/4c/ae/2d/4cae2d9054a7bcc59899378cd0c1566d.jpg",
                          "https://thefashiontag.files.wordpress.com/2013/09/accessories-umbrella-style.jpg",
                          "https://s-media-cache-ak0.pinimg.com/564x/29/2a/cb/292acb91c2fd426d2a13e96cc2c00e09.jpg"]}
    men_clothes[temp]
  end
end
