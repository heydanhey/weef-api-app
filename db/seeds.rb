100.times do
  Post.create!(
    name: Bazaar.heroku,
    text: Faker::Hipster.sentence,
    emotion_id: Faker::Number.between(1, 4)
    )
end
