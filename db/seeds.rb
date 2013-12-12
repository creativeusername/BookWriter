# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

felix = User.create!(email: "fthiel2s@smail.inf.h-brs.de", first_name: "Felix", last_name: "Thiele", password: "12345678", password_confirmation: "12345678", username: "fthiel2s")
max = User.create!(email: "mkerp2s@smail.inf.h-brs.de", first_name: "Max", last_name: "Kerp", password: "12345678", password_confirmation: "12345678", username: "mkerp2s")
jan_eric = User.create!(email: "emueller2s@smail.inf.h-brs.de", first_name: "Jan Eric", last_name: "Mueller", password: "12345678", password_confirmation: "12345678", username: "emueller2s")
