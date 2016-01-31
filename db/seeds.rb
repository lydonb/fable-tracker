# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
Fable.create(date: (Time.now - (60 * 60 * 24 * 7)))
Fable.create(date: Time.now)
Fable.create(date: (Time.now + (60 * 60 * 24 * 7)))

user1 = User.create!(email: 'user1@example.com', password: 'password', password_confirmation: 'password')
user2 = User.create!(email: 'user2@example.com', password: 'password', password_confirmation: 'password')

Topic.create(description: 'Topic 1')
Topic.create(description: 'Topic 2')
Topic.create(description: 'Topic 3')
Topic.create(description: 'Topic 4')
Topic.create(description: 'Topic 5')
Topic.create(description: 'Topic 6')

SignUp.create(fable_id: 1, user_id: user1.id, beverage_request: 'Dark Beer', topic_id: 1)
SignUp.create(fable_id: 1, user_id: user2.id, beverage_request: 'Lite Beer', topic_id: 2)
SignUp.create(fable_id: 2, user_id: user1.id, beverage_request: 'Amber Beer', topic_id: 3)
SignUp.create(fable_id: 2, user_id: user2.id, beverage_request: 'IPA', topic_id: 4)
SignUp.create(fable_id: 3, user_id: user1.id, beverage_request: 'Anything but IPA', topic_id: 5)
