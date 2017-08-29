require 'random_data'

# Create Posts
50.times do

#-Use create with a bang '!' so a error is raised if there is a problem with
# the data when seeding
  Post.create!(
#class does not exist yet, wishful coding
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
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

#Create Questions
100.times do
  Question.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph,
    resolved: false
  )
end


puts "Start"
Post.find_or_create_by(title: "Medieval Times", body: "Food was heavily spiced during the 14th century")
puts "Finish"

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{Question.count} questions created"
