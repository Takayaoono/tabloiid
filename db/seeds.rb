# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = [
    {username: 'iid_admin', email:'a@gmail.com', password: 'aaaaaa'}
]

users.each do |record|
    User.create!(record) unless User.find_by(email: record[:email])
end
