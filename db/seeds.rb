# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Exo 2.1.3:
d= Doctor.create(last_name: "Dr Strange")
p= Patient.create(first_name: "Le malade imaginaire")
puts "j'ai créé mon doctor, #{d.last_name}, ainsi que son patient, #{p.first_name}"
a= Appointment.create(doctor: d, patient: p)
a.doctor
a.patient
d.patients
p.doctors
puts "J'ai ensuite pris un rdv qui a permis de savoir à vie que ce rdv a eu pour médecin le #{d.last_name}, et que le patient lors de ce rdv était #{p.first_name}"


#2.1.4 Petit coup de boost:
Paris=City.create(name:"Paris")
d=Doctor.create(first_name:"Frankenstein")
d.city=Paris
d.city
puts "J'ai pu savoir en engageant Sherlok Holmes que le Dr #{d.first_name} vivait à #{d.city.name}"