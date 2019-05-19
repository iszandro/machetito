# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create([
                  { name: 'vocabulary', display_name: 'Vocabulary' },
                  { name: 'lessons', display_name: 'Lessons' },
                  { name: 'kanjis', display_name: 'Kanjis' },
                  { name: 'verbs', display_name: 'Verbs' },
                  { name: 'adjectives', display_name: 'Adjectives' },
                  { name: 'na adjective', display_name: 'NA Adjective' },
                  { name: 'lesson 1', display_name: 'Lesson 1' }
                ])
