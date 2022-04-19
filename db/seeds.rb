# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "admin@gmail.com", password: "password")

Cafe.create(name: "Cafe Masters", address: "10 Blue Street, Avondale", description: "The best coffee in town", user_id: 1)

Cafe.create(name: "Fresh Beans", address: "52 Rose Street, Pascoe Vale", description: "A trendy hip cafe", user_id: 1)

Cafe.create(name: "Cafe Notturno", address: "147 Lygon Street, Cartlon", description: "A down to earth Italian Cafe spot", user_id: 1)

Product.create(cafe_id: 1, category: "Coffee", description: "A Simple Latte", price: 3.50, name: "Latte")

Product.create(cafe_id: 1, category: "Coffee", description: "A Simple Cappuccino", price: 5.00, name: "Cappuccino")

Product.create(cafe_id: 1, category: "Food", description: "Crispy bread, with roast vegetables, mozzarella and pesto", price: 10.00, name: "Vegie Focaccia")


Product.create(cafe_id: 2, category: "Coffee", price: 3.50, name: "Flat White")

Product.create(cafe_id: 2, category: "Coffee", price: 5.00, name: "Piccolo")

Product.create(cafe_id: 2, category: "Food", description: "Smashed avocado on toast with Poached Eggs and marinated feta", price: 9.50, name: "Avo Smash")


Product.create(cafe_id: 3, category: "Coffee", price: 5.50, name: "Macchiato")

Product.create(cafe_id: 3, category: "Coffee", price: 4.00, name: "Mocha")

Product.create(cafe_id: 3, category: "Food", description: "Bacon served with eggs your way on toast", price: 8.00, name: "Eggs n Bacon")
