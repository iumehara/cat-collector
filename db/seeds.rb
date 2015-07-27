# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(
  silver: 100,
  gold: 20)

Cat.create(
  name: 'Mr. Tabby',
  description: 'tabby',
  personality: 'laid back',
  image_name: 'mr-tabby.png',
  strength: '77')
Cat.create(
  name: 'Mr. Black',
  description: 'black',
  personality: 'mysterious',
  image_name: 'mr-black.png',
  strength: '77')
Cat.create(
  name: 'Mr. Black and White',
  description: 'black and white',
  personality: 'moody',
  image_name: 'mr-black-and-white.png',
  strength: '67')
Cat.create(
  name: 'Mr. Gray',
  description: 'gray',
  image_name: 'mr-gray.png',
  personality: 'sleepy',
  strength: '83')

Good.create(
  name: 'Mr. Mouse',
  description: 'realistic fur-like fabric',
  price_type: 's',
  price_value: 160,
  image_name: 'toy-mouse.png',
  size: 's'
)
Good.create(
  name: 'Cardboard Box',
  description: 'Mysterious cardboard box of unknown origin',
  price_type: 's',
  price_value: 70,
  image_name: 'toy-box.png',
  size: 's'
)
Good.create(
  name: 'shoebox',
  description: 'used to size 8 sneakers. useful hinge for open and close',
  price_type: 's',
  price_value: 170,
  image_name: 'toy-shoebox.png',
  size: 's'
)
Good.create(
  name: 'Ball of yarn',
  description: 'noone has ever seen the end of the string. does it go on forever?',
  price_type: 'g',
  price_value: 36,
  image_name: 'toy-yarn.png',
  size: 'l'
)
Food.create(
  name: 'crunchy mix',
  description: 'healthy treat mix with a crunch',
  price_type: 's',
  price_value: 0,
  size: 's',
  image_full_name: 'food-full.png',
  image_empty_name: 'food-empty.png',
  amount: 120,
  dish_id: 1
)
Yard.create(
  name: 'backyard',
  price_type: 's',
  price_value: 0
)
Spot.create(
  yard_id: 1,
  position_id: 1
)
Spot.create(
  yard_id: 1,
  position_id: 2
)
Spot.create(
  yard_id: 1,
  position_id: 3
)
Spot.create(
  yard_id: 1,
  position_id: 4
)
Spot.create(
  yard_id: 1,
  position_id: 5
)
Dish.create(
  yard_id: 1,
  position_id: 1,
  amount: 120
)
