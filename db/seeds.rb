# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
bob = User.create(name: "bob", password: "password", email: 'email', phone_number: '4233551195')
bob.contacts.create(name: "dad", company: "aa", position: 'old man', contact_info: "4233049060")
bob.journals.create(entry: "today", meetups:"5", study: "jsonapi", applications: "five local businesses", goals: "get at it")
bob.jobs.create(name: "software developer", location: "remote", pay: "$50,000")
