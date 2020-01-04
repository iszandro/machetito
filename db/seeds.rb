# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Word.transaction do
  words = Word.create([
    {
      wordable: Kanji.create(name: '景色', on_yomi: %w[けしき], meta: { jlpt: 4 }),
      translations: Word.create([
        { wordable: Noun.find(207) }
      ])
    },
    {
      wordable: Kanji.create(name: '声', on_yomi: %w[せい], kun_yomi: %w[こえ], meta: { jlpt: 3 }),
      translations: Word.create([
        { wordable: Noun.create(name: 'voz', language: 'es') }
      ])
    },
    {
      wordable: Kanji.create(name: '台所', kun_yomi: %w[だいどころ]),
      translations: Word.create([
        { wordable: Noun.create(name: 'cocina', language: 'es') }
      ])
    },
    {
      wordable: Kanji.create(name: '道具', kun_yomi: %w[どうぐ], meta: { jlpt: 4 }),
      translations: Word.create([
        { wordable: Noun.find_by(name: 'herramienta') },
        { wordable: Noun.create(name: 'instrumento', language: 'es') },
        { wordable: Noun.create(name: 'utensilio', language: 'es') },
      ])
    },
    {
      wordable: Kanji.create(name: '鳥', on_yomi: %w[ちょう], kun_yomi: %w[とり], meta: { jlpt: 5 }),
      translations: Word.create([
        { wordable: Noun.create(name: 'ave', language: 'es') },
        { wordable: Noun.create(name: 'pájaro', language: 'es') },
      ])
    },
    {
      wordable: Kanji.create(name: '昔', on_yomi: %w[せき], kun_yomi: %w[むかし], meta: { jlpt: 3 }),
      translations: Word.create([
        { wordable: Noun.create(name: 'hace mucho tiempo', language: 'es') },
      ])
    },
    {
      wordable: Kanji.create(name: '夢', on_yomi: %w[む], kun_yomi: %w[ゆめ], meta: { jlpt: 4 }),
      translations: Word.create([
        { wordable: Noun.create(name: 'sueño', language: 'es') },
      ])
    },
    {
      wordable: Kanji.create(name: '泳ぐ', kun_yomi: %w[およぐ], meta: { jlpt: 5 }),
      translations: Word.create([
        { wordable: Verb.find_by(name: 'nadar') },
      ])
    },
    {
      wordable: Kanji.create(name: '座る', kun_yomi: %w[すわる], meta: { jlpt: 5 }),
      translations: Word.create([
        { wordable: Verb.find_by(name: 'sentarse') },
      ])
    },
    {
      wordable: Kanji.create(name: '走る', kun_yomi: %w[はしる], meta: { jlpt: 5 }),
      translations: Word.create([
        { wordable: Verb.create(name: 'correr', language: 'es') },
      ])
    },
    {
      wordable: Kanji.create(name: '役に立つ', kun_yomi: %w[やくにたつ], meta: { jlpt: 4 }),
      translations: Word.create([
        { wordable: Noun.create(name: 'ser ￿útil', language: 'es') },
        { wordable: Noun.create(name: 'ser ￿de ayuda', language: 'es') },
      ])
    }
  ])

  subcategory = Category.find_by(name: 'kanjis').subcategories.create(name: 'kanji 27', display_name: 'Kanji 27')
  subcategory.words.concat(words)
end
