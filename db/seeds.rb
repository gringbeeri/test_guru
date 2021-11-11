# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'Dima', surname: 'UA')
User.create(name: 'Vladislav', surname: 'UA')
User.create(name: 'Igor', surname: 'RU')
Answer.create(body: 'Yes', correct: 'f')
Answer.create(body: 'False', correct: 't')
Category.create(title: 'Backend')
Category.create(title: 'Fronted')
Question.create(body: 'Ruby создан в 1995?')
Question.create(body: 'HTML имеет ООП?')
Test.create(title: 'Ruby', level: 1, category_id: 1)
Test.create(title: 'HTML', category_id: 2)
Test.create(title: 'JS', level: 1, category_id: 1)
Test.create(title: 'Python', category_id: 1)
Test.create(title: 'SQL', level: 2, category_id: 2)
Test.create(title: 'C++', level: 2, category_id: 1)
Passing.create(user_id: 1, test_id: 1)
Passing.create(user_id: 1, test_id: 3)
Passing.create(user_id: 1, test_id: 4)
Passing.create(user_id: 2, test_id: 2)
Passing.create(user_id: 2, test_id: 5)
Passing.create(user_id: 2, test_id: 6)
