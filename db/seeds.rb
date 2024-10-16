# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(name: "佐藤", password: "satou", mail: "satou@xxxx", address:"出雲市ｘｘ町")
u2 = User.create(name: "らいき", password: "satou", mail: "satou@xxxx", address:"出雲市ｘｘ町")
u3 = User.create(name: "ｋｋ", password: "satou", mail: "satou@xxxx", address:"出雲市ｘｘ町")

pc1 = ProductClass.create(name: "制服")
pc2 = ProductClass.create(name: "教科書")
pc3 = ProductClass.create(name: "鞄")

# u1が出品した商品
p11 = Product.create(name: "U1男子制服", price:2000, explanation: "出雲商業のせいふくです", user_id: u1.id, product_class_id: pc1.id, sale: "販売中")
p11 = Product.create(name: "U1女子制服",  price:2000, explanation: "出雲商業のせいふくです", user_id: u1.id, product_class_id: pc1.id, sale: "販売中")
p12 = Product.create(name: "U1国語の教科書", price:500, explanation: "出雲商業の国語の教科書です", user_id: u1.id, product_class_id: pc2.id, sale: "売り切れ")
p12 = Product.create(name: "U1数学の教科書", price:500, explanation: "出雲商業の国語の教科書です", user_id: u1.id, product_class_id: pc2.id, sale: "販売中")

# u2が出品した商品
p21 = Product.create(name: "U2男子制服", price:2500, explanation: "出雲商業のせいふくです", user_id: u2.id, product_class_id: pc1.id, sale: "販売中")
p22 = Product.create(name: "U2国語の教科書", price:800, explanation: "出雲商業の国語の教科書です", user_id: u2.id, product_class_id: pc2.id, sale: "販売中")
p23 = Product.create(name: "U2赤鞄", price:1000, explanation: "出雲商業の鞄です", user_id: u2.id, product_class_id: pc3.id, sale: "販売中")

# u3が出品した商品
p31 = Product.create(name: "U3男子制服", price:2700, explanation: "出雲商業のせいふくです", user_id: u3.id, product_class_id: pc1.id, sale: "売り切れ")
p31 = Product.create(name: "U3女子制服",  price:2700, explanation: "出雲商業のせいふくです", user_id: u3.id, product_class_id: pc1.id, sale: "販売中")
p32 = Product.create(name: "U3数学の教科書", price:1200, explanation: "出雲商業の国語の教科書です", user_id: u3.id, product_class_id: pc2.id, sale: "販売中")
p33 = Product.create(name: "U3青鞄", price:900, explanation: "出雲商業の鞄です", user_id: u3.id, product_class_id: pc3.id, sale: "売り切れ")




