# Encoding: utf-8
require 'csv'

def most_successfull(number, max_year, file_name)
  #TODO: return the number most successfull movies max_year
   csv_options = { col_sep: ',', encoding: "iso-8859-1:UTF-8" }
   filepath = "./movies.csv"
   movies_before_year = []
   movies_sorted= []

    CSV.foreach(file_name, csv_options) do |row|
    if row[1].to_i  < max_year
      movies_before_year << {:name => row[0], :year => row[1].to_i, :earnings => row[2].to_i }
    end
end

movies_sorted = movies_before_year.sort_by { |hash| hash[2].to_i }.first(number)
end



