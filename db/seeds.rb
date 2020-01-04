# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

UserCourse.destroy_all
UserLesson.destroy_all
Lesson.destroy_all  
Course.destroy_all
TagCourse.destroy_all
Tag.destroy_all 
Profile.destroy_all
User.destroy_all 

################### User ###################

user1 = User.create!({email: 'cindy@debuggingthis.com', first_name: 'Cindy', last_name: 'Tong', password: '12345678'})
user2 = User.create!({email: 'alex@debuggingthis.com', first_name: 'Alex', last_name: 'Tong', password:'12345678'})
user3 = User.create!({email: 'cathy@debuggingthis.com', first_name: 'Cathy', last_name: 'Tong', password: '12345678'})
user4 = User.create!({email: 'mike@debuggingthis.com', first_name: 'Mike', last_name: 'Tong', password: '12345678'})
user5 = User.create!({email: 'brendan@debuggingthis.com', first_name: 'Brendan', last_name: 'Lukas', password: '12345678'})
user6 = User.create!({email: 'grace@debuggingthis.com', first_name: 'Grace', last_name: 'Beaver', password: '12345678'})
user7 = User.create!({email: 'zach@debuggingthis.com', first_name: 'Zach', last_name: 'Beaver', password: '12345678'})
user8 = User.create!({email: 'danielle@debuggingthis.com', first_name: 'Danielle', last_name: 'Tremonte', password: '12345678'})
user9 = User.create!({email: 'jason@debuggingthis.com', first_name: 'Jason', last_name: 'Brodsky', password: '12345678'})

ruby = Course.create!(title: "Intro to Ruby", description: "Learn about Ruby fundamentals and more")
javascript = Course.create!(title: "Intro to Javascript", description: "Learn about Javascript fundamentals and more")
sql = Course.create!(title: "How SQL works", description: "Learn about querying a database using SQL")
react = Course.create!(title: "React 101", description: "React and Redux fundamentals")

################### UserCourse ###################

# user1 enrolled in 2 courses 
UserCourse.create!(user_id: user1.id, course_id: ruby.id)
UserCourse.create!(user_id: user1.id, course_id: javascript.id)

# user2 enrolled in all 4 courses 
UserCourse.create!(user_id: user2.id, course_id: ruby.id)
UserCourse.create!(user_id: user2.id, course_id: javascript.id)
UserCourse.create!(user_id: user2.id, course_id: sql.id)
UserCourse.create!(user_id: user2.id, course_id: react.id)

# user3 enrolled in all courses 
UserCourse.create!(user_id: user3.id, course_id: ruby.id)
UserCourse.create!(user_id: user3.id, course_id: javascript.id)
UserCourse.create!(user_id: user3.id, course_id: sql.id)
UserCourse.create!(user_id: user3.id, course_id: react.id)


################### Lessons ###################
ruby101 = Lesson.create!(title: 'Ruby lesson 1', course_id: ruby.id, duration: 20, lesson_content: 'Here is the lesson course text for this really fun lesson')
ruby102 = Lesson.create!(title: 'Ruby lesson 2', course_id: ruby.id, duration: 10, lesson_content: 'Here is the lesson course text for this really fun lesson')
ruby103 = Lesson.create!(title: 'Ruby lesson 3', course_id: ruby.id, duration: 30, lesson_content: 'Here is the lesson course text for this really fun lesson')

javascript101 = Lesson.create!(title: 'Javascript lesson 1', course_id: javascript.id, duration: 20, lesson_content: 'Here is the lesson course text for this really fun lesson')
javascript102 = Lesson.create!(title: 'Javascript lesson 2', course_id: javascript.id, duration: 80, lesson_content: 'Here is the lesson course text for this really fun lesson')
javascript103 = Lesson.create!(title: 'Javascript lesson 3', course_id: javascript.id, duration: 30, lesson_content: 'Here is the lesson course text for this really fun lesson')

sql101 = Lesson.create!(title: 'SQL lesson 1', course_id: sql.id, duration: 20, lesson_content: 'Here is the lesson course text for this really fun lesson')
sql102 = Lesson.create!(title: 'SQL lesson 2', course_id: sql.id, duration: 10, lesson_content: 'Here is the lesson course text for this really fun lesson')

react101 = Lesson.create!(title: 'React lesson 1', course_id: react.id, duration: 20, lesson_content: 'Here is the lesson course text for this really fun lesson')
react102 = Lesson.create!(title: 'React lesson 2', course_id: react.id, duration: 10, lesson_content: 'Here is the lesson course text for this really fun lesson')
react103 = Lesson.create!(title: 'React lesson 3', course_id: react.id, duration: 40, lesson_content: 'Here is the lesson course text for this really fun lesson')
react104 = Lesson.create!(title: 'React lesson 4', course_id: react.id, duration: 80, lesson_content: 'Here is the lesson course text for this really fun lesson')
react105 = Lesson.create!(title: 'React lesson 5', course_id: react.id, duration: 30, lesson_content: 'Here is the lesson course text for this really fun lesson')
react106 = Lesson.create!(title: 'React lesson 6', course_id: react.id, duration: 15, lesson_content: 'Here is the lesson course text for this really fun lesson')

################### User Lesson ###################
UserLesson.create!(user_id: user1.id, lesson_id: ruby101.id)
UserLesson.create!(user_id: user1.id, lesson_id: ruby102.id)
UserLesson.create!(user_id: user1.id, lesson_id: ruby103.id)

UserLesson.create!(user_id: user2.id, lesson_id: ruby101.id)
UserLesson.create!(user_id: user2.id, lesson_id: javascript101.id)
UserLesson.create!(user_id: user2.id, lesson_id: sql101.id)

UserLesson.create!(user_id: user3.id, lesson_id: sql101.id)


################### Tag ###################
algorithm = Tag.create!(topic: "Algorithms")
sorting = Tag.create!(topic: "Sorting")
search = Tag.create!(topic: "Search")

data_structure = Tag.create!(topic: "Data Structures")

fundamentals = Tag.create!(topic: "Fundamentals")
array = Tag.create!(topic: "Arrays")
string = Tag.create!(topic: "Strings")
hash = Tag.create!(topic: "Hash")
linked_list = Tag.create!(topic: "Linked List")
stacks = Tag.create!(topic: "Stacks")
queues = Tag.create!(topic: "Queues")
trees = Tag.create!(topic: "Trees")
graphs = Tag.create!(topic: "Graphs")
recursion= Tag.create!(topic: "Recursion") 

# Languages
ruby_tag = Tag.create!(topic: "Ruby")
javascript_tag = Tag.create!(topic: "Javascript")
sql_tag = Tag.create!(topic: "SQL")
react_tag = Tag.create!(topic: "React")

################### TagCourse ###################
TagCourse.create!(course_id: ruby.id, tag_id: ruby_tag.id)
TagCourse.create!(course_id: ruby.id, tag_id: fundamentals.id)
TagCourse.create!(course_id: ruby.id, tag_id: array.id)

TagCourse.create!(course_id: javascript.id, tag_id: ruby_tag.id)
TagCourse.create!(course_id: javascript.id, tag_id: fundamentals.id)
TagCourse.create!(course_id: javascript.id, tag_id: array.id)

TagCourse.create!(course_id: sql.id, tag_id: sql_tag.id)
TagCourse.create!(course_id: sql.id, tag_id: fundamentals.id)
TagCourse.create!(course_id: sql.id, tag_id: array.id)
