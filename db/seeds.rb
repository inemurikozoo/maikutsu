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


#ミントじゃない強め緑
Category.create!(
  name: "野菜",
  color_code: "#8eff8e"
  )

#色っぽいピンク
Category.create!(
  name: "果物",
  color_code: "#ff69b4"
  )

#朱色系赤
Category.create!(
  name: "肉類",
  color_code: "#ff8e8e"
  )

#青らしい青
Category.create!(
  name: "魚介類",
  color_code: "#8ec6ff"
  )

#黄色
Category.create!(
  name: "卵類",
  color_code: "#ffff8e"
  )

#黄土色っぽい色
Category.create!(
  name: "穀類",
  color_code: "#daa520"
  )
#黄色がかった緑色
Category.create!(
  name: "豆類",
  color_code: "#adff2f"
  )
#赤紫
Category.create!(
  name: "飲み物",
  color_code: "#c68eff"
  )

#青紫
Category.create!(
  name: "嗜好品",
  color_code: "#8e8eff"
  )

#オレンジ
Category.create!(
  name: "調味料",
  color_code: "#ffc68e"
  )

#きなり
Category.create!(
  name: "粉類",
  color_code: "#f0e68c"
  )

#ミント色
Category.create!(
  name: "乳製品",
  color_code: "#8effc6"
  )

#黄緑
Category.create!(
  name: "乾物",
  color_code: "#c6ff8e"
  )

#ピンクより赤
Category.create!(
  name: "パン",
  color_code: "#ff8ec6"
  )

#ベージュっぽい色
Category.create!(
  name: "麺類",
  color_code: "#fff8dc"
  )

#水色
Category.create!(
  name: "冷凍食品",
  color_code: "#8effff"
  )

#ピンク
Category.create!(
  name: "その他食品",
  color_code: "#ff8eff"
  )

#食品系はパステルカラー
#その他はビビッドカラーで統一

Item.create!(
  name: "にんじん",
  preserve_method: "濡らさないように注意。袋やラップ、新聞紙にくるんで野菜室へ。しなびても水へ漬けたら復活！",
  how_to_choose: "葉を落とした切り口がなるべく小さく、ひげ根が少ないもの。太過ぎないもの。",
  limit: "野菜室で約1か月程度",
  category_id: 1,
  item_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/にんじん.jpg"), filename:"にんじん.jpg")
  )

Item.create!(
  name: "キャベツ",
  preserve_method: "芯をくりぬき、濡らしたペーパータオルを詰めておく。ポリ袋に入れる。",
  how_to_choose: "芯の切り口が変色していないもの、全体的に色が濃いもののほうが良い。",
  limit: "2週間程度",
  category_id: 1,
  item_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/キャベツ.jpg"), filename:"キャベツ.jpg")
  )

Item.create!(
  name: "卵",
  preserve_method: "パックに入れたままとがったほうを下にして保管する。腐る原因となるので洗ってはダメ。",
  how_to_choose: "割ったときにプリっと黄身が盛り上がっているものは鮮度が高い。",
  limit: "採卵後最長で57日。賞味期限は生で食べられる期限。",
  category_id: 5,
  item_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/卵.jpg"), filename:"卵.jpg")
  )

Item.create!(
  name: "精肉",
  preserve_method: "",
  how_to_choose: "",
  limit: "",
  category_id: 3
  )

Item.create!(
  name: "ベーコン",
  preserve_method: "",
  how_to_choose: "",
  limit: "",
  category_id: 3
  )

Item.create!(
  name: "玉ねぎ",
  preserve_method: "",
  how_to_choose: "",
  limit: "",
  category_id: 1,
  item_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/玉ねぎ.jpg"), filename:"玉ねぎ.jpg")
  )

Item.create!(
  name: "牛乳",
  preserve_method: "",
  how_to_choose: "",
  limit: "",
  category_id: 11,
  item_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/牛乳.jpg"), filename:"牛乳.jpg")
  )

Item.create!(
  name: "水",
  preserve_method: "",
  how_to_choose: "",
  limit: "",
  category_id: 8
  )

30.times do |n|
  User.create!(
    email: "test#{n + 1}@test.com",
    name: "まいくつちゃん#{n + 1}",
    password: "123456",
    is_active: true
  )
end

