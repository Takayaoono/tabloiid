# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

["自己紹介", "最近の取り組み", "社長インタビュー"].each do |tag|
  Tag.create(
    name: tag
  )
end

9.times do |n|
  # １件ずつ作成している
  post = Post.create!(
    title: "PDF#{n + 1}",
    file_path: "#{n + 1}.pdf"
  )

  PostTag.create(
    post_id: post.id,
    # 一旦自己紹介のタグIDである1を指定する
    tag_id: 1
  )
end
