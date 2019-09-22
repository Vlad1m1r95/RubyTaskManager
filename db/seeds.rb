# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#  User.create([{name: 'John', email: 'John@gmail.com', password: 'John1234' }])
# User.create([{name: 'Steve', email: 'Steve@gmail.com', password: 'Stev1234' , admin: true}])

fn = Faker::Name.first_name
sn = Faker::Name.last_name

users  =  User.create([
  {  
        name: 'Olya',
        email: 'olya@gmail.com', 
        password: 'olya1234' 
        },
        { name: 'Vika',
          email: 'Vika@gmail.com', 
          password: 'vika1234'
        },
        { name: Faker::Name.name ,
          email: "#{fn}.#{sn}@gmail.com", 
          password: "12#{fn}34#{sn}"
        },
        

])
Task.create([
  {
        subject:     'hi this second test ', 
        description: 'this second test data' ,
        status:      'To Do',
        assignee:    users[0].name
        }
])
