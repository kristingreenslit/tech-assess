# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Computer.destroy_all
Assessment.destroy_all

computer1 = Computer.create(name: "Apple II")
computer1 = Computer.create(name: "Apple III")

computer1.assessments.create(name: "Jane's First Assessment")
computer1.assessments.create(name: "Jane's Second Assessment")
