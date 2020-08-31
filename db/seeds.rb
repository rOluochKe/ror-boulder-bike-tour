# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

csv_text = File.read('public/riders.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  puts(row.to_hash)
  Rider.create!(row.to_hash)
end
puts "created riders from csv file"

5.times do |slogan|
  Slogan.create!(
    first: "name",
    last: "surname",
    email: "email#{slogan}@serv.com",
    slogan: "lorem ipsum dolor #{slogan}"
  )
end
puts "created 5 slogan rows"