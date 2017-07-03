require 'random_data'

5.times do
    Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
    )
end
Posts = Post.all

10.times do
  Comment.create!(
  post: Posts.sample,
  body: RandomData.random_paragraph
  )
end

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
