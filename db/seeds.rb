# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
5.times do |i|
  Item.create(item: "item-#{i+1}", description: "description of item-#{i+1}")
end
5.times do |u|
  user = User.new(
    email: "user_#{u+1}@example.com",
    password: "doorkeeper-#{u+1}",
    password_confirmation: "doorkeeper-#{u+1}"
  )
  user.save!
end
