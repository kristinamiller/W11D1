# json.extract! @guest, :name, :age, :favorite_color
json.set! :name, @guest.name 
json.set! :age, @guest.age
json.set! :favorite_color, @guest.favorite_color
json.set! :gifts do 
  @guest.gifts.each do |gift|
    json.set! gift.id do 
      json.extract! gift, :title, :description
    end
  end
end