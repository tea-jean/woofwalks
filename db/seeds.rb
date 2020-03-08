
Service.delete_all
Walker.delete_all
User.delete_all

user1 = User.create(email:"test1@app.com", password:"123456")

user2 = User.create(email:"test2@app.com", password:"123456")

walker1 = User.create(
    email:"walker@woofwalk.com", 
    password: "walkertest", 
    is_walker: true)

walker1.build_walker(
    walker_name:"Tegan", 
    biography: "I walk dogs")

walker1.save

walker1.walker.services.create(
    title: "Hike Apex", 
    description: "1.5km round trip on lead in bush setting")

walker1.save

walker2 = User.create(
    email:"walker2@woofwalk.com", 
    password: "walkertest", 
    is_walker: true)

walker2.build_walker(
    walker_name:"Scott", 
    biography: "I let dogs play in mud")

walker2.save

walker2.walker.services.create(
    title: "Wet Weather Walk", 
    description: "Find every puddle. Jump in it.")

walker2.save