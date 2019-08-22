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
                  { name: 'lesson 1', display_name: 'Lesson 1'}
                ])

Category.create([
                  { name: 'masu form', display_name: 'Masu form', parent_id: 4},
                  { name: 'lesson 19', display_name: 'Lesson 19', parent_id: 2}
                ])

Word.transaction do
  Word.create([
    {
      wordable: Verb.create(name: 'あらいます', language: 'jp', meta: { group: 1, kanji: '洗います' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'lavar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'ひきます', language: 'jp', meta: { group: 1, kanji: '弾きます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'tocar', language: 'es', meta: { description: 'instrumentos de musicales de cuerda, piano, etc' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'うたいます', language: 'jp', meta: { group: 1, kanji: '歌います' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'cantar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'あつめます', language: 'jp', meta: { group: 2, kanji: '集めます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'coleccionar', language: 'es') },
        { wordable: Verb.create(name: 'reunir', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'すてます', language: 'jp', meta: { group: 2, kanji: '捨てます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'tirar', language: 'es') },
        { wordable: Verb.create(name: 'botar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'かえます', language: 'jp', meta: { group: 2, kanji: '換えます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'cambiar', language: 'es') },
        { wordable: Verb.create(name: 'reemplazar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'うんてんします', language: 'jp', meta: { group: 3, kanji: '運転します' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'manejar', language: 'es', meta: { description: 'un vehículo' }) },
        { wordable: Verb.create(name: 'conducir', language: 'es', meta: { description: 'un vehículo' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'よやくします', language: 'jp', meta: { group: 3, kanji: '予約します' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'reservar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'けんがくします', language: 'jp', meta: { group: 3, kanji: '見学します' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'visitar un lugar', language: 'es', meta: { description: 'principalmente con fines de estudio' }) },
        { wordable: Verb.create(name: 'visitar un sitio', language: 'es', meta: { description: 'principalmente con fines de estudio' }) }
      ])
    }
  ])
end


Word.transaction do
  verbs = Word.create([
    {
      wordable: Verb.create(name: 'のぼります', language: 'jp', meta: { group: 1, kanji: '登ります' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'escalar', language: 'es', meta: { description: 'una montaña' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'とまります', language: 'jp', meta: { group: 1, kanji: '泊まります' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'alojarse', language: 'es', meta: { description: 'en un hotel' }) },
        { wordable: Verb.create(name: 'hospedarse', language: 'es', meta: { description: 'en un hotel' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'そうじします', language: 'jp', meta: { group: 3, kanji: '掃除します' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'limpiar', language: 'es', meta: { description: 'una habitación' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'せんたくします', language: 'jp', meta: { group: 3, kanji: '洗濯します' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'lavar', language: 'es', meta: { description: 'la ropa' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'れんしゅうします', language: 'jp', meta: { group: 3, kanji: '練習します' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'practicar', language: 'es') },
        { wordable: Verb.create(name: 'ensayar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'なります', language: 'jp', meta: { group: 1 }),
      translations: Word.create([
        { wordable: Verb.create(name: 'convertirse en', language: 'es', meta: { description: 'la primavera, etc' }) },
        { wordable: Verb.create(name: 'hacerse', language: 'es', meta: { description: 'la primavera, etc' }) },
        { wordable: Verb.create(name: 'llegar', language: 'es', meta: { description: 'la primavera, etc' }) }
      ])
    }
  ])

  Category.find_by(name: 'masu form').words.concat(verbs)
  Category.find_by(name: 'lesson 19').words.concat(verbs)
end
