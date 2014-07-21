def pmu_format!(race_array)
  #TODO: modify the given array so that it is PMU-consistent
    place = race_array.size
    for horse in 0...place
    race_array[horse] = "#{horse + 1}-#{race_array[horse]}!"
    end
race_array.reverse!

end

pmu_format! ["Abricot du Laudot", "Black Caviar", "Brigadier Sabari"]






