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
	name: "しろねこさん",
	description: "白",
	personality: "おっとり",
	strength: "77")
Cat.create(
	name: "くろねこさん",
	description: "黒",
	personality: "ツンデレ",
	strength: "77")
Cat.create(
	name: "しろくろさん",
	description: "白黒",
	personality: "おちょうしもの",
	strength: "67")
Cat.create(
	name: "はいいろさん",
	description: "灰",
	personality: "ふしぎちゃん",
	strength: "83")

Good.create(
	name: 'ゴムボール（赤）',
	description: 'ぼよんぼよんとhなえる\nゴム製の赤いボール\n柔らかさと弾力で飽きがない！',
	price_type: 's',
	price_value: 60,
	size: 's'
)
Good.create(
	name: 'ダンボール（小）',
	description: '謎の多い不思議な魅力の小箱',
	price_type: 's',
	price_value: 70,
	size: 's'
)
Good.create(
	name: 'ねずみさん',
	description: '本能をくずぐるフォルムで\nねこたちのハートをキャッチ',
	price_type: 's',
	price_value: 170,
	size: 's'
)
Good.create(
	name: 'こたつ',
	description: 'ねこ専用こたつ\nあったかふとんから抜け出せない！\n冬の定番といえばこれ',
	price_type: 'g',
	price_value: 36,
	size: 'l'
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

