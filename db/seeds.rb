# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create(
  email: "a@a",
  password: "aaaaaa"
)

Item.create!(
  name: "にんじん",
  preserve_method: "濡らさないように注意。袋やラップ、新聞紙にくるんで野菜室へ。しなびても水へ漬けたら復活！",
  how_to_choose: "葉を落とした切り口がなるべく小さく、ひげ根が少ないもの。太過ぎないもの。",
  limit: "野菜室で約1か月程度"
  )

Item.create!(
  name: "キャベツ",
  preserve_method: "芯をくりぬき、濡らしたペーパータオルを詰めておく。ポリ袋に入れる。",
  how_to_choose: "芯の切り口が変色していないもの、全体的に色が濃いもののほうが良い。",
  limit: "2週間程度"
  )

Item.create!(
  name: "卵",
  preserve_method: "パックに入れたままとがったほうを下にして保管する。腐る原因となるので洗ってはダメ。",
  how_to_choose: "割ったときにプリっと黄身が盛り上がっているものは鮮度が高い。",
  limit: "採卵後最長で57日。賞味期限は生で食べられる期限。"
  )

Item.create!(
  name: "精肉",
  preserve_method: "",
  how_to_choose: "",
  limit: ""
  )

Item.create!(
  name: "ベーコン",
  preserve_method: "",
  how_to_choose: "",
  limit: ""
  )

Item.create!(
  name: "玉ねぎ",
  preserve_method: "",
  how_to_choose: "",
  limit: ""
  )

Item.create!(
  name: "牛乳",
  preserve_method: "",
  how_to_choose: "",
  limit: ""
  )

Item.create!(
  name: "水",
  preserve_method: "",
  how_to_choose: "",
  limit: ""
  )

30.times do |n|
  Item.create!(
    name: "テスト#{n + 1}"
    )
end

30.times do |n|
  User.create!(
    email: "test#{n + 1}@test.com",
    name: "まいくつちゃん#{n + 1}",
    password: "123456",
    is_active: true
  )
end