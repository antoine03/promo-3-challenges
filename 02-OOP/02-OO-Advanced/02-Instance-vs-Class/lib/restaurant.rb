class Restaurant
  attr_reader :city, :name, :average_rating
  #TODO add relevant accessors if necessary

  def initialize(city, name)
    #TODO: implement constructor with relevant instance variables
    @city = city
    @name = name
    @average_rating = 0
    @type_of_food = " "
    @resto_rates = []
  end

  #TODO: implement #filter_by_city and #rate methods
  def rate(num)
    @resto_rates << num.to_f

    @average_rating = @resto_rates.inject(:+).to_f / @resto_rates.length
  end

  def self.filter_by_city(restaurants, city)
     restaurants_list = []
     restaurants.each do |restaurant|
     restaurants_list << restaurant if restaurant.city == city
     end
     restaurants_list
   end

end
