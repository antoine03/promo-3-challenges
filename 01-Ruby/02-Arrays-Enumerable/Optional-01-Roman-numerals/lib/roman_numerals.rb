def old_roman_numeral(an_integer)
  #TODO: translate integer in roman number - old-style way
  roman_numbers = {"M" => 1000, "D" => 500, "C" => 100, "L" => 50, "X" => 10, "V" => 5, "I"=>1}
  roman_string = ""
  roman_numbers.each do |key, value|
    quotient = an_integer / value
    an_integer = an_integer % value
    if quotient >= 1
      roman_string += key*quotient
    end
  end
  roman_string
end

def new_roman_numeral(an_integer)
  #TODO: translate integer in roman number - modern-style way

end

puts new_roman_numeral(19)