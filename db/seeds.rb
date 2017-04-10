# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p "#{Rails.env}"
p predefined_users = JSON.parse(File.read("db/data/#{Rails.env}_users.json"))
predefined_users.each_with_index do |user, index|
	user = User.find_by(email: user["info"]["email"]) || User.new(user["info"])
	user.save!
end

p "Database seeded successfully!!!"
p "-----------------------------------------------------------"
