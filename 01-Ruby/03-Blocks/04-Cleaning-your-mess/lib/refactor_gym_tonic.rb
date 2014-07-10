# Very dirty code to make some dirty gym...
def hop_hop_hop(number_of_exercises)
  for i in (1..number_of_exercises) do
    counter = 0
    until counter == i do
      print "hop! "
      counter += 1
    end
    unless counter != i # Test if reaching the end of the current exercise.
      # Prints message in that case
      print 'One more time..' + "\n"
    end
    # Reset counter to 0 for the next exercise
    counter = 0
  end
  count=1
  (1..number_of_exercises).each do |x|
    string =" hop! " *count
    count += 1
    puts"#{string} one more time.."
  end

hop_hop_hop(6)
end