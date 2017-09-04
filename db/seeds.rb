require 'random_data'

# Create Topics
15.times do
  Topic.create!(
    name:         RandomData.random_sentence,
    description:  RandomData.random_paragraph
  )
end
topics = Topic.all

# Create Posts
50.times do

#-Use create with a bang '!' so a error is raised if there is a problem with
# the data when seeding
  Post.create!(
    topic:  topics.sample,
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
  )
end

20.times do

  SponsoredPost.create!(
    topic:  topics.sample,
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
  )
end

posts = Post.all
sponsored_posts = SponsoredPost.all

#times functions like a loop
100.times do
  Comment.create!(

#-we call sample to pick a random post. Sample returns a
# random element from an array every time it's called
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

puts "Start"
Post.find_or_create_by(title: "Medieval Times", body: "Food was heavily spiced during the 14th century")
puts "Finish"

puts "Seed finished"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{SponsoredPost.count} sponsored posts created"
