# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#users
amy = User.create(email: "amy@gmail.com", username: "Amy", password: "password")
jenna = User.create(email: "jenna@gmail.com", username: "Jenna", password: "password")
ron = User.create(email: "ron@gmail.com", username: "Ron", password: "password")

#assignments

pat = Assignment.create(name: "Pat", street:"123 Flower Drive", city: "Dayton", state: "Ohio", zip: 56798, phone: "555-654-2345")
rachel = Assignment.create(name: "Rachel", street:"123 Flower Drive", city: "Dayton", state: "Ohio", zip: 34567, phone: "555-123-3456")
bob = Assignment.create(name: "Bob", street: "123 Flower Drive", city: "Dayton", state: "Ohio", zip: 34567, phone: "555-456-8909")

#tasks

task = Task.create(description: "complete massage", user_id: amy.id, assignment_id: pat.id, due_date: Date.today)
task2 = Task.create(description: "complete massage", user_id: jenna.id, assignment_id: rachel.id, due_date: Date.today)
task3 = Task.create(description: "complete massage", user_id: ron.id, assignment_id: bob.id, due_date: Date.today)
task4 = Task.create(description: "complete massage", user_id: ron.id, assignment_id: bob.id, due_date: Date.today)
