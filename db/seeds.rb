require 'random_data'

# Create Users
5.times do
  User.create!(
# #3
  name:     RandomData.random_name,
  email:    RandomData.random_email,
  password: RandomData.random_sentence
  )
end
users = User.all

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
    user:   users.sample,
    topic:  topics.sample,
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
  )
end

posts = Post.all

#times functions like a loop
100.times do
  Comment.create!(

#-we call sample to pick a random post. Sample returns a
# random element from an array every time it's called

    user: users.sample,
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

# Create an admin user
admin = User.create!(
  name:     'Khaleesi',
  email:    'khaleesi@targaryen.com',
  password: 'motherofdragons',
  role:     'admin'
)

# Create a member
member = User.create!(
  name:     'Random Name',
  email:    'random@hotmail.com',
  password: 'hopethisworks!'
)

puts "Start"
Post.find_or_create_by(title: "Medieval Times", body: "Food was heavily spiced during the 14th century")
puts "Finish"

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
