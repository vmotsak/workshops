# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or create!d alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create!([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create!(name: 'Emanuel', city: cities.first)
ActiveRecord::Base.transaction do
  admin = User.create!({email: 'admin@example.com', firstname: 'John', lastname: 'Admin', password: 'password', password_confirmation: 'password'},admin:true)
  alan = User.create!({email: 'a_elam@teleworm.us', firstname: 'Alan', lastname: 'Elam', password: 'zzzzxxxx', password_confirmation: 'zzzzxxxx'})
  krista = User.create!({email: 'swanson@teleworm.us', firstname: 'Krista', lastname: 'Swanson', password: 'zzzzxxxx', password_confirmation: 'zzzzxxxx'})
  melva = User.create!({email: 'goselin@teleworm.us', firstname: 'Melva', lastname: 'Gosselin', password: 'zzzzxxxx', password_confirmation: 'zzzzxxxx'})
  liz = User.create!({email: 'gaffeney@teleworm.us', firstname: 'Elizabeth', lastname: 'Gaffeney', password: 'zzzzxxxx', password_confirmation: 'zzzzxxxx'})

  cookies = Category.create!({name: 'Cookies'})
  fruits = Category.create!({name: 'Fruits'})

  almond = cookies.products.create!({title: 'Almond cake', description: 'Small biscuits with no filling by default, with a crunchy texture, but sometimes crumbling on first bite. ', price: 10.0, user: admin})
  berger = cookies.products.create!({title: 'Berger Cookie', description: 'Buttery vanilla wafer topped with thick creamy fudge', price: 4.99, user: admin})
  cookies.products.create!({title: 'Boortsog', description: 'Made by deep-frying small pieces of a flattened dough. ', price: 1.2, user: admin})
  macaroon = cookies.products.create!({title: 'Coconut macaroon', description: 'Cookies that consist of a paste of egg whites with coconut that is placed on a wafer and then baked.', price: 8.9, user: admin})

  apple = fruits.products.create!({title: 'Apple', description: 'Sweet and tasty', price: 1.0, user: admin})
  peach = fruits.products.create!({title: 'Peach', description: 'edible juicy fruit', price: 2.0, user: admin})
  grape = fruits.products.create!({title: 'Grape', description: 'fruiting berry of the deciduous woody vines', price: 3.0, user: admin})


  almond.reviews.create!({content: 'Very nice texture', rating: 5, user: alan})
  apple.reviews.create!({content: 'just an apple', rating: 3, user: krista})

  berger.reviews.create!({content: 'approved by admin', rating: 2, user: admin})
  peach.reviews.create!({content: 'approved by admin', rating: 2, user: admin})
  macaroon.reviews.create!({content: 'approved by admin', rating: 2, user: admin})
  grape.reviews.create!({content: 'approved by admin', rating: 2, user: admin})
  apple.reviews.create!({content: 'approved by admin', rating: 2, user: admin})
end
