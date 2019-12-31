# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

UserCourse.all.destroy_all
UserLesson.all.destroy_all
Lesson.all.destroy_all  
Course.all.destroy_all
TagCourse.all.destroy_all
Tag.all.destroy_all 
Profile.all.destroy_all
User.all.destroy_all 


user1 = User.create!(email: 'cindy@debuggingthis.com', first_name: 'Cindy', last_name: 'Tong', password: '12345678')
user2 = User.create!(email: 'alex@debuggingthis.com', first_name: 'Alex', last_name: 'Tong', password:'12345678')
user3 = User.create!(email: 'cathy@debuggingthis.com', first_name: 'Cathy', last_name: 'Tong', password: '12345678')
user4 = User.create!(email: 'mike@debuggingthis.com', first_name: 'Mike', last_name: 'Tong', password: '12345678')
user5 = User.create!(email: 'brendan@debuggingthis.com', first_name: 'Brendan', last_name: 'Lukas', password: '12345678')
user6 = User.create!(email: 'grace@debuggingthis.com', first_name: 'Grace', last_name: 'Beaver', password: '12345678')
user7 = User.create!(email: 'zach@debuggingthis.com', first_name: 'Zach', last_name: 'Beaver', password: '12345678')
user8 = User.create!(email: 'danielle@debuggingthis.com', first_name: 'Danielle', last_name: 'Tremonte', password: '12345678')
user9 = User.create!(email: 'jason@debuggingthis.com', first_name: 'Jason', last_name: 'Brodsky', password: '12345678')