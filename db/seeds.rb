# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(name: "佐藤", password: "satou", mail: "satou@xxxx", address:"出雲市ｘｘ町", manage_flag:false, stop_flag:false)
u2 = User.create(name: "らいき", password: "raiki", mail: "raiki@xxxx", address:"出雲市ｘｘ町", manage_flag:false, stop_flag:false)
u3 = User.create(name: "ｋｋ", password: "kk", mail: "kk@xxxx", address:"出雲市ｘｘ町", manage_flag:false, stop_flag:false)
u4 = User.create(name: "山田太郎", password: "1111", mail: "1111@xxxx", address: "出雲市大津町", manage_flag: false, stop_flag: false )
u5 = User.create(name: "田中花子", password: "2222", mail: "2222@xxxx", address: "出雲市", manage_flag: false, stop_flag: false )
u6 = User.create(name: "鈴木一郎", password: "3333", mail: "3333@xxxx", adress:"出雲市", manage_flag: false, stop_flag:false )
u7 = User.create(name: "", password: "4444", mail: "4444@xxxx", adress:"出雲市", manage_flag: false, stop_flag:false )
u8 = User.create(name: "", password: "5555", mail: "5555@xxxx", adress:"出雲市", manage_flag: false, stop_flag:false )
u9 = User.create(name: "", password: "6666", mail: "6666@xxxx", adress:"出雲市", manage_flag: false, stop_flag:false )
u10 = User.create(name: "", password: "7777", mail: "7777@xxxx", adress:"出雲市", manage_flag: false, stop_flag:false )
u11 = User.create(name: "", password: "8888", mail: "8888@xxxx", adress:"出雲市", manage_flag: false, stop_flag:false )
u12 = User.create(name: "", password: "9999", mail: "9999@xxxx", adress:"出雲市", manage_flag: false, stop_flag:false )
u13 = User.create(name: "", password: "0000", mail: "0000@xxxx", adress:"出雲市", manage_flag: false, stop_flag:false )

# 管理者
u4 = User.create(name: "みさき", password: "misaki", mail: "misaki@xxxx", address:"出雲市ｘｘ町", manage_flag:true, stop_flag:false)
# 停止された人
u5 = User.create(name: "かわせ", password: "kawase", mail: "kawase@xxxx", address:"出雲市ｘｘ町", manage_flag:false, stop_flag:true)

pc1 = ProductClass.create(name: "制服")
pc2 = ProductClass.create(name: "教科書")
pc3 = ProductClass.create(name: "鞄")

# u1が出品した商品
p11 = Product.create(name: "U1男子制服", price:2000, explanation: "出雲商業のせいふくです", user_id: u1.id, product_class_id: pc1.id, image: "sample.jfi", sale: "売り切れ")
p12 = Product.create(name: "U1女子制服",  price:2000, explanation: "出雲商業のせいふくです", user_id: u1.id, product_class_id: pc1.id, image: "sample2.png", sale: "販売中")
p13 = Product.create(name: "U1国語の教科書", price:500, explanation: "出雲商業の国語の教科書です", user_id: u1.id, product_class_id: pc2.id, image: "text2.png", sale: "販売中")
p14 = Product.create(name: "U1数学の教科書", price:500, explanation: "出雲商業の数学の教科書です", user_id: u1.id, product_class_id: pc2.id, image: "text.png", sale: "販売中")

# u2が出品した商品
p21 = Product.create(name: "男子制服", price:2500, explanation: "出雲商業のせいふくです", user_id: u2.id, product_class_id: pc1.id, image: "sample.jfi", sale: "販売中")
p22 = Product.create(name: "国語の教科書", price:800, explanation: "出雲商業の国語の教科書です", user_id: u2.id, product_class_id: pc2.id, image: "text2.png", sale: "販売中")
p23 = Product.create(name: "赤鞄", price:1000, explanation: "出雲商業の鞄です", user_id: u2.id, product_class_id: pc3.id, image: "kaban2.png", sale: "販売中")
p24 = Product.create(name: "数2の教科書", price:800, explanation: "出雲工業の数学の教科書です 令和４年に購入しました", user_id: u2.id, product_class_id: pc2.id, image: "教科書(数学).png", sale: "販売中")
p25 = Product.create(name: "鞄", price:1000, explanation: "出雲農林の鞄です", user_id: u2.id, product_class_id: pc3.id, image: "鞄.png", sale: "販売中")
p26 = Product.create(name: "出雲高校の男子制服", price:2500, explanation: "出雲高校のせいふくです", user_id: u2.id, product_class_id: pc1.id, image: "学ラン.png", sale: "販売中")
p21 = Product.create(name: "出雲西高校の女子制服", price:3500, explanation: "出雲西高校の女性用のせいふくです", user_id: u2.id, product_class_id: pc1.id, image: "制服（女性用）.png", sale: "販売中")


# u3が出品した商品
p31 = Product.create(name: "U3男子制服", price:2700, explanation: "出雲商業のせいふくです", user_id: u3.id, product_class_id: pc1.id, image: "sample.jfi", sale: "販売中")
p32 = Product.create(name: "U3女子制服",  price:2700, explanation: "出雲商業のせいふくです", user_id: u3.id, product_class_id: pc1.id, image: "sample2.png", sale: "販売中")
p33 = Product.create(name: "U3数学の教科書", price:1200, explanation: "出雲商業の数学の教科書です", user_id: u3.id, product_class_id: pc2.id, image: "text.png", sale: "販売中")
p34 = Product.create(name: "U3青鞄", price:900, explanation: "出雲商業の鞄です", user_id: u3.id, product_class_id: pc3.id, image: "kaban.png", sale: "販売中")

#u4が出品した商品

#u5が出品した商品

#u6が出品した商品

#通報種別
rc1 = ReportClass.create(comment: "不適切な商品である")
rc2 = ReportClass.create(comment: "商品と名前が一致していない")
rc3 = ReportClass.create(comment: "過剰な金額")
rc4 = ReportClass.create(comment: "商品についての説明が不十分")
rc5 = ReportClass.create(comment: "商品を発送してくれない")
rc6 = ReportClass.create(comment: "商品が破損している")

#佐藤がらいきのU2男子制服に不適切な商品であると通報した
r1 = Report.create(product_id: p21.id, user_id: u1.id, report_comment: "不適切な商品である")

#ｋｋがらいきのU2男子制服に、過剰な金額と商品を発送してくれないと通報した
r2 = Report.create(product_id: p21.id, user_id: u3.id, report_comment: "過剰な金額")
r3 = Report.create(product_id: p21.id, user_id: u3.id, report_comment: "商品を発送してくれない")


#佐藤がｋｋの出品したU3数学の教科書をお気に入りに登録した
f1 = Favorite.create(product_id: p33.id, user_id: u1.id)

#らいきが佐藤の出品したU1女子制服とU1国語の教科書をお気に入りに登録した
f2 = Favorite.create(product_id: p12.id, user_id: u2.id)
f3 = Favorite.create(product_id: p13.id, user_id: u2.id)

#ｋｋが佐藤の出品したU１男子制服を購入した
pu1 = Purchase.create(product_id: p11.id, user_id: u3.id)

#らいきがｋｋの出品したU3青鞄を購入した
pu2 = Purchase.create(product_id: p34.id, user_id: u2.id)