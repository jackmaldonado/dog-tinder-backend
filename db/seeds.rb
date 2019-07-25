# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
dog_attributes = [
  {
    name: 'Peewee',
    age: 8,
    enjoys: 'snoozing'
  },
  {
    name: 'Barkley',
    age: 8,
    enjoys: 'Food mostly, really just food.'
  }
]

dog_attributes.each do |attributes|
  Dog.create(attributes)
end
