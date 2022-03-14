# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Bug.create([
  { 
    title: "Great Airlines",
    description: "I had a lovely time",
    screenshot: "hannan.jpeg",
    bug_type: 1
  }, 
  { 
    title: "Airlines",
    description: "a lovely time",
    screenshot: "hannan.jpeg",
    bug_type: 2
  }
])

Project.create([
  { 
    title: "project 1",
    description: "description of p1",
  }, 
  { 
    title: "project 2",
    description: "description of p2",
  }
])

