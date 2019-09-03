json.set! :name, @party.name
json.set! :location, @party.location
json.set! :guests do 
  json.array! @party.guests do |guest|
      json.set! :name, guest.name
      json.set! :age, guest.age
      json.set! :favorite_color, guest.favorite_color
      json.set! :gifts do
        json.array! guest.gifts do |gift|
          json.extract! gift, :title, :description
        end
      end
    end
  end
