require_relative "wagon_sort"




# le terminal me demande d'entrer un nom
# je rentre une reponse
# si cette réponse est vide
# j'affiche les infos
# sinon je reboucle

students_list = []

puts "Entre un premier nom ? ou tapez <Enter>"
name = gets.chomp

until name == ""
  students_list << name
  puts "Entre un nom ou quitte ave <Entree>"
  name = gets.chomp
end

# Afficher Congrats message
if students_list.size == 1
  congrats_message = "Congratulations! your wagon has 1 student"
else
  congrats_message = "Congratulations! your wagon has #{students_list.size} students"
end

puts congrats_message


# Trier le tableau
sorted_students = wagon_sort(students_list)


# Construire le message 'alice, bob, joey, and pepita'
message = ""

for student in sorted_students
  # on va ajouter l'étudiant à notre message avec la virgule qui va bien

  # si c'est le dernier
  if student == sorted_students.last
    message += student

  # si c'est l'avant dernier
  elsif student == sorted_students[sorted_students.size - 2]
    message += student + " and "

  # sinon
  else
    message += student + ", "
  end

end

puts message



# avec join et avec classe !
first_part = sorted_students[0..(sorted_students.size-2)].join(", ")

final_message = "#{first_part} and #{sorted_students.last}"

puts final_message






















