# frozen_string_literal: true

Word.transaction do
  # Word.create([
  #   {
  #     wordable: Kanji.create(name: '行く', on_yomi: %w[], kun_yomi: %w[いく], meta: { jlpt: 5 }),
  #     translations: Word.create([
  #       { wordable: Verb.find_or_create_by(name: 'ir', language: :es) },
  #     ])
  #   },
  #   {
  #     wordable: Kanji.create(name: '来る', on_yomi: %w[], kun_yomi: %w[くる], meta: { jlpt: 5 }),
  #     translations: Word.create([
  #       { wordable: Verb.find_or_create_by(name: 'venir', language: :es) },
  #     ])
  #   },
  # ])

  # words = Word.create([
  #   {
  #     wordable: Kanji.create(name: '行', on_yomi: %w[こう ぎょう あん], kun_yomi: %w[い おこ], meta: { jlpt: 4 }),
  #     translations: Word.create([
  #       { wordable: Noun.find_or_create_by(name: 'línea', language: :es, meta: { examples: 'de texto' }) },
  #       { wordable: Noun.find_or_create_by(name: 'fila', language: :es) },
  #       { wordable: Noun.find_or_create_by(name: 'verso', language: :es) },
  #       { wordable: Noun.find_or_create_by(name: 'viaje', language: :es) },
  #     ])
  #   },
  #   {
  #     wordable: Kanji.create(name: '来', on_yomi: %w[], kun_yomi: %w[いく], meta: { jlpt: 5 }),
  #     translations: Word.create([
  #       { wordable: Verb.find_or_create_by(name: 'ir', language: :es) },
  #     ])
  #   },
  # ])

  words = Word.create([
    {
      wordable: Kanji.create(name: '島', on_yomi: %w[とう], kun_yomi: %w[しま], meta: { jlpt: 4 }),
      translations: Word.create([
        { wordable: Noun.find_or_create_by(name: 'isla', language: :es) },
      ])
    },
    {
      wordable: Kanji.create(name: '村', on_yomi: %w[そん], kun_yomi: %w[むら], meta: { jlpt: 5 }),
      translations: Word.create([
        { wordable: Noun.find_or_create_by(name: 'villa', language: :es) },
      ])
    },
    {
      wordable: Kanji.create(name: '葉', on_yomi: %w[よう], kun_yomi: %w[は], meta: { jlpt: 4 }),
      translations: Word.create([
        { wordable: Noun.find_or_create_by(name: 'hoja', language: :es) },
        { wordable: Counter.find_or_create_by(name: 'countador de hojas', language: :es) },
      ])
    },
    {
      wordable: Kanji.create(name: '緑', on_yomi: %w[りょく ろく], kun_yomi: %w[みどり], meta: { jlpt: 5 }),
      translations: Word.create([
        { wordable: Noun.find_or_create_by(name: 'verde', language: :es) },
      ])
    },
    {
      wordable: Kanji.create(name: '村', on_yomi: %w[かつ], kun_yomi: %w[むら], meta: { jlpt: 3 }),
      translations: Word.create([
        { wordable: Noun.find_or_create_by(name: 'accíon', language: :es) },
        { wordable: Noun.find_or_create_by(name: 'actividad', language: :es) },
        { wordable: Noun.find_or_create_by(name: 'activo', language: :es) },
      ])
    },
    {
      wordable: Kanji.create(name: '生活', on_yomi: %w[], kun_yomi: %w[せいかつ], meta: { jlpt: 4 }),
      translations: Word.create([
        { wordable: Noun.find_or_create_by(name: 'estilo de vida', language: :es) },
      ])
    },
    {
      wordable: Kanji.create(name: '向', on_yomi: %w[こう], kun_yomi: %w[む], meta: { jlpt: 3 }),
      translations: Word.create([
        { wordable: Noun.find_or_create_by(name: 'más allá', language: :es) },
        { wordable: Noun.find_or_create_by(name: 'allá', language: :es) },
        { wordable: Noun.find_or_create_by(name: 'confrontar', language: :es) },
        { wordable: Noun.find_or_create_by(name: 'desafiar', language: :es) },
      ])
    },
    {
      wordable: Kanji.create(name: '向こう', on_yomi: %w[], kun_yomi: %w[むこう], meta: { jlpt: 5 }),
      translations: Word.create([
        { wordable: Noun.find_or_create_by(name: 'otro lado', language: :es) },
        { wordable: Noun.find_or_create_by(name: 'lado opuesto', language: :es) },
        { wordable: Noun.find_or_create_by(name: 'dirección opuesta', language: :es) },
        { wordable: Noun.find_or_create_by(name: 'más allá', language: :es) },
        { wordable: Noun.find_or_create_by(name: 'hacia allá', language: :es) },
      ])
    },
    {
      wordable: Kanji.create(name: '珍', on_yomi: %w[ちん], kun_yomi: %w[めずら], meta: { jlpt: 2 }),
      translations: Word.create([
        { wordable: Adjective.find_or_create_by(name: 'raro', language: :es) },
        { wordable: Adjective.find_or_create_by(name: 'extraño', language: :es) },
      ])
    },
    {
      wordable: Kanji.create(name: '珍しい', on_yomi: %w[], kun_yomi: %w[めずらしい], meta: { jlpt: 4 }),
      translations: Word.create([
        { wordable: Adjective.find_or_create_by(name: 'raro', language: :es) },
        { wordable: Adjective.find_or_create_by(name: 'inusual', language: :es) },
      ])
    },
    {
      wordable: Kanji.create(name: '変', on_yomi: %w[へん], kun_yomi: %w[か], meta: { jlpt: 4 }),
      translations: Word.create([
        { wordable: Adjective.find_or_create_by(name: 'raro', language: :es) },
        { wordable: Adjective.find_or_create_by(name: 'inesperado', language: :es) },
        { wordable: Noun.find_or_create_by(name: 'cambio', language: :es) },
        { wordable: Noun.find_or_create_by(name: 'incidente', language: :es) },
        { wordable: Noun.find_or_create_by(name: 'disturbio', language: :es) },
        { wordable: Noun.find_or_create_by(name: 'accidente', language: :es) },
      ])
    },
    {
      wordable: Kanji.create(name: '変える', on_yomi: %w[], kun_yomi: %w[かえる], meta: { jlpt: 4 }),
      translations: Word.create([
        { wordable: Verb.find_or_create_by(name: 'cambiar', language: :es) },
        { wordable: Verb.find_or_create_by(name: 'alterar', language: :es) },
        { wordable: Verb.find_or_create_by(name: 'transformar', language: :es) },
        { wordable: Verb.find_or_create_by(name: 'convertir', language: :es) },
      ])
    },
    {
      wordable: Kanji.create(name: '変わる', on_yomi: %w[], kun_yomi: %w[かわる], meta: { jlpt: 4 }),
      translations: Word.create([
        { wordable: Verb.find_or_create_by(name: 'ser cambiado', language: :es) },
        { wordable: Verb.find_or_create_by(name: 'ser alterarado', language: :es) },
        { wordable: Verb.find_or_create_by(name: 'ser transformado', language: :es) },
        { wordable: Verb.find_or_create_by(name: 'ser convertido', language: :es) },
      ])
    },
    {
      wordable: Kanji.create(name: '捨', on_yomi: %w[しゃ], kun_yomi: %w[す], meta: { jlpt: 2 }),
      translations: Word.create([
        { wordable: Verb.find_or_create_by(name: 'tirar', language: :es) },
        { wordable: Verb.find_or_create_by(name: 'descartar', language: :es) },
      ])
    },
    {
      wordable: Kanji.create(name: '捨てる', on_yomi: %w[], kun_yomi: %w[すてる], meta: { jlpt: 4 }),
      translations: Word.create([
        { wordable: Verb.find_or_create_by(name: 'tirar', language: :es) },
        { wordable: Verb.find_or_create_by(name: 'descartar', language: :es) },
        { wordable: Verb.find_or_create_by(name: 'abandonar', language: :es) },
        { wordable: Verb.find_or_create_by(name: 'dimitir', language: :es) },
        { wordable: Verb.find_or_create_by(name: 'renunciar', language: :es) },
      ])
    },
    {
      wordable: Kanji.create(name: '拾', on_yomi: %w[しゅう じゅう], kun_yomi: %w[ひろ], meta: { jlpt: 4 }),
      translations: Word.create([
        { wordable: Verb.find_or_create_by(name: 'recoger', language: :es) },
        { wordable: Verb.find_or_create_by(name: 'colectar', language: :es) },
      ])
    },
    {
      wordable: Kanji.create(name: '拾う', on_yomi: %w[], kun_yomi: %w[ひろう], meta: { jlpt: 4 }),
      translations: Word.create([
        { wordable: Verb.find_or_create_by(name: 'recoger', language: :es) },
        { wordable: Verb.find_or_create_by(name: 'encotrar', language: :es) },
        { wordable: Verb.find_or_create_by(name: 'reunir', language: :es) },
      ])
    },
  ])

  subcategory = Category.create(name: 'kanji 35', display_name: 'Kanji 35')
  subcategory.words.concat(words)
  Category.find(3).subcategories << subcategory
end
