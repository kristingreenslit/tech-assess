# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Computer.destroy_all
Assessment.destroy_all

computer1 = user1.computers.create(name: "Jane's Apple II Computer")
computer2 = user2.computers.create(name: "John's Apple III Computer")

computer1.assessments.create(name: "Jane's First Assessment")
computer2.assessments.create(name: "John's Second Assessment")
