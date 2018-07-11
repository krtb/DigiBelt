# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# wrote below delete_all method to wipe seeds when reinitiating
Language.delete_all
Database.delete_all
Framework.delete_all
Category.delete_all

lang0 = Language.create(name: "Placeholder", description: "Placeholder")
lang1 = Language.create(name: "Python", description: "Useful language")
lang2 = Language.create(name: "Ruby", description: "Useful language")
lang3 = Language.create(name: "Java", description: "Useful language")
lang4 = Language.create(name: "Go", description: "Useful language")
lang5 = Language.create(name: "Javascript", description: "Useful web dev language")

db0 = Database.create(name: "Placeholder", description: "Placeholder")
db1 = Database.create(name: "PostgreSQL", description: "Useful database")
db2 = Database.create(name: "SQLite", description: "Useful database")
db3 = Database.create(name: "MySQL", description: "Useful database")
db4 = Database.create(name: "MariaDB", description: "Useful database")

fw0 = Framework.create(name: "Placeholder", description: "Placeholder", language: lang0)
fw1 = Framework.create(name: "Rails", description: "Ruby web dev framework", language: lang2)
fw1 = Framework.create(name: "React.js", description: "JS web dev framework", language: lang5)
fw1 = Framework.create(name: "Node.js", description: "Js backend framework", language: lang5)

cat0 = Category.create(name: "Placeholder")
cat1 = Category.create(name: "Web Dev")
cat2 = Category.create(name: "Frontend")
cat3 = Category.create(name: "Backend")
