# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	project1 = Project.create name: "work ironhack", description: 'medio bien'
	project2 = Project.create name: "work movistar", description: 'muy cool'
	project3 = Project.create name: "NewIronHack 6", description: 'mola mazo'
	project4 = Project.create name: "NewIronHack 7", description: 'titanium'

	project1.entries.create hours: 1, minutes: 45, comments: 'primer time', date: Date.new(2014,3,1)
	project2.entries.create hours: 2, minutes: 10, comments: 'second work-time', date: Date.new(2014,2,5)
	project3.entries.create hours: 3, minutes: 33, comments: 'refactoring', date: Date.new(2014,6,1)
	project4.entries.create hours: 4, minutes: 12, comments: 'finish', date: Date.new(2014,7,1)
