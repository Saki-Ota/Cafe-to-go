# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




5.times do
  user = User.create(
    first_name: 'User1',
    last_name: 'Last',
    email: Faker::Internet.email,
    password: '123456',
    phone_number: '12345567'
  )
  user.save!
end

5.times do
  cafe = Cafe.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    description: Faker::Restaurant.type,
    user_id: [1, 2, 3, 4, 5].sample
  )
  cafe.save!
end

10.times do
  product = Product.create(
    category: Faker::Food.ethnic_category,
    description: Faker::Food.description,
    name: Faker::Food.dish,
    price: Faker::Number.decimal(l_digits: 2),
    hidden: false,
    cafe_id: [1, 2, 3, 4, 5].sample
  )
  product.save!
end


5.times do
  cart = Cart.create(
    active: true,
    user_id: [1, 2].sample
  )
  cart.save!
end

5.times do
  item = Item.create(
    cart_id: [1, 2, 3, 4, 5].sample,
    product_id: [1, 2, 3, 4, 5, 6, 7].sample
  )
  item.save!
end
