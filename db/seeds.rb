# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#create classes
Klass.where(name: 'one').first_or_create(name: 'one')
Klass.where(name: 'two').first_or_create(name: 'two')
Klass.where(name: 'three').first_or_create(name: 'three')
Klass.where(name: 'four').first_or_create(name: 'four')
Klass.where(name: 'five').first_or_create(name: 'five')
Klass.where(name: 'six').first_or_create(name: 'six')
Klass.where(name: 'seven').first_or_create(name: 'seven')
Klass.where(name: 'eight').first_or_create(name: 'eight')
Klass.where(name: 'nine').first_or_create(name: 'nine')
Klass.where(name: 'ten').first_or_create(name: 'ten')