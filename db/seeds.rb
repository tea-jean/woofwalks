# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Service.delete_all
Walker.delete_all
User.delete_all

User.create(email:"test@app.com", password:"123456")

walker = User.create(email:"walker@woofwalk.com", password: "walkertest", is_walker: true)

walker.build_walker(walker_name:"Tegan", biography: "I walk dogs")
walker.save
walker.walker.services.create(title: "Hike Apex", description: "1.5km round trip on lead in bush setting")
walker.save