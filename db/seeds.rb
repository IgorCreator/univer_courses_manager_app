# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
c1 = Course.create(short_name: 'CS111', name: "Intro to Compute Science", description: "A thorough intro to Compute Science")
c2 = Course.create(short_name: 'CS112', name: "Basics of Compute Science", description: "Intermediate look to Compute Science")
c3 = Course.create(short_name: 'CS201', name: "Advance of Compute Science", description: "Advance look to Compute Science")
c4 = Course.create(short_name: 'CS301', name: "Specifics of Algorithms", description: "Advanced algorithm of programming")

pwd = "pwd"
# check password $> obj.authenticate("pwd")

s1 = Student.create(name: 'Luke', email: 'luke_student@gmail.com', password: pwd)
s2 = Student.create(name: 'John', email: 'john_student@gmail.com', password: pwd)
s3 = Student.create(name: 'Bob', email: 'bob_student@gmail.com', password: pwd)
s4 = Student.create(name: 'Tom', email: 'tom_student@gmail.com', password: pwd)
