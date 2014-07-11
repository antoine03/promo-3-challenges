def poor_calories_counter(burger, side, beverage)
  #TODO: return number of calories for this mcDonald order beverage"]
  order = {
  "Cheese Burger" => 290,
  "Big Mac" => 300,
  "Mc Bacon" => 400,
  "Royal Cheese" => 130,
  "French fries" => 130,
  "Potatoes" => 130,
  "Coca" => 160,
  "Sprite" => 170
}

  order[burger] + order[side] + order[beverage]
end


def calories_counter(*orders)
  #TODO: return number of calories for a less constrained order
  calories=0


  menu = {
    "Cheese Burger" => 290,
    "Big Mac" => 300,
    "Mc Bacon" => 400,
    "Royal Cheese" => 130,
    "French fries" => 130,
    "Potatoes" => 130,
    "Coca" => 160,
    "Sprite" => 170
  }

   orders.each do |dish|
    calories = calories + menu[dish]
   end


  calories
end
