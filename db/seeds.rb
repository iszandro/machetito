# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Category.create([
#   { name: 'vocabulary', display_name: 'Vocabulary' },
#   { name: 'lessons', display_name: 'Lessons' },
#   { name: 'kanjis', display_name: 'Kanjis' },
#   { name: 'verbs', display_name: 'Verbs' },
#   { name: 'adjectives', display_name: 'Adjectives' },
#   { name: 'na adjective', display_name: 'NA Adjective' },
#   { name: 'lesson 1', display_name: 'Lesson 1' }
# ])

Word.transaction do
  verbs = Word.create([
    {
      wordable: Verb.create(name: 'あいます', language: 'jp', meta: { group: 1, kanji: '会います', examples: 'ともだちに〜' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'ver a', language: 'es', meta: { examples: 'amigos' }) },
        { wordable: Verb.create(name: 'encontrarse con', language: 'es', meta: { examples: 'amigos' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'あそびます', language: 'jp', meta: { group: 1, kanji: '遊びます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'jugar', language: 'es') },
        { wordable: Verb.create(name: 'divertirse', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'あらいます', language: 'jp', meta: { group: 1, kanji: '洗います' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'lavar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'あります', language: 'jp', meta: { group: 1, examples: 'おまつりが〜' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'haber', language: 'es', meta: { examples: 'cosas inanimadas, un festival' }) },
        { wordable: Verb.create(name: 'estar', language: 'es', meta: { examples: 'cosas inanimadas' }) },
        { wordable: Verb.create(name: 'tener lugar', language: 'es', meta: { examples: 'un festival' }) },
        { wordable: Verb.create(name: 'realizarse', language: 'es', meta: { examples: 'un festival' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'あるきます', language: 'jp', meta: { group: 1, kanji: '歩きます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'caminar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'いいます', language: 'jp', meta: { group: 1, kanji: '言います' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'decir', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'いきます', language: 'jp', meta: { group: 1, kanji: '行きます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'ir', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'いそぎます', language: 'jp', meta: { group: 1, kanji: '急ぎます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'apresurarse', language: 'es') },
        { wordable: Verb.create(name: 'darse prisa', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'いります', language: 'jp', meta: { group: 1, kanji: '要ります', examples: 'ビザガ〜' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'necesitar', language: 'es', meta: { examples: 'un visado' }) },
        { wordable: Verb.create(name: 'requerir', language: 'es', meta: { examples: 'un visado' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'うごきます', language: 'jp', meta: { group: 1, kanji: '動きます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'funcionar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'うたいます', language: 'jp', meta: { group: 1, kanji: '歌います' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'cantar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'うります', language: 'jp', meta: { group: 1, kanji: '売ります' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'vender', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'おきます', language: 'jp', meta: { group: 1, kanji: '置きます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'poner', language: 'es') },
        { wordable: Verb.create(name: 'colocar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'おくります', language: 'jp', meta: { group: 1, kanji: '送ります', examples: 'ひとを〜' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'enviar', language: 'es') },
        { wordable: Verb.create(name: 'acompañar', language: 'es', meta: { examples: 'a alguien' }) },
        { wordable: Verb.create(name: 'llevar', language: 'es', meta: { examples: 'a alguien' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'おします', language: 'jp', meta: { group: 1, kanji: '押します' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'presionar', language: 'es') },
        { wordable: Verb.create(name: 'empujar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'おもいだします', language: 'jp', meta: { group: 1, kanji: '思い出します' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'acordarse de', language: 'es') },
        { wordable: Verb.create(name: 'recordar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'おもいます', language: 'jp', meta: { group: 1, kanji: '思います' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'creer', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'およぎます', language: 'jp', meta: { group: 1, kanji: '泳ぎます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'nadar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'おろします', language: 'jp', meta: { group: 1, kanji: '下ろします', examples: 'おかねを〜' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'retirar', language: 'es', meta: { examples: 'dinero' }) },
        { wordable: Verb.create(name: 'sacar', language: 'es', meta: { examples: 'dinero' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'おわります', language: 'jp', meta: { group: 1, kanji: '終わります' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'terminar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'かいます', language: 'jp', meta: { group: 1, kanji: '買います' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'comprar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'かえします', language: 'jp', meta: { group: 1, kanji: '返します' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'devolver', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'かえります', language: 'jp', meta: { group: 1, kanji: '帰ります' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'volver', language: 'es') },
        { wordable: Verb.create(name: 'regresar', language: 'es') },
        { wordable: Verb.create(name: 'irse a casa', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'かかります', language: 'jp', meta: { group: 1 }),
      translations: Word.create([
        { wordable: Verb.create(name: 'tardar', language: 'es', meta: { examples: 'tiempo' }) },
        { wordable: Verb.create(name: 'costar', language: 'es', meta: { examples: 'dinero' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'かきます', language: 'jp', meta: { group: 1, kanji: '書きます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'escribir', language: 'es') },
        { wordable: Verb.create(name: 'pintar', language: 'es') },
        { wordable: Verb.create(name: 'dibujar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'かします', language: 'jp', meta: { group: 1, kanji: '貸します' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'prestar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'かちます', language: 'jp', meta: { group: 1, kanji: '勝ちます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'ganar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'かぶります', language: 'jp', meta: { group: 1 }),
      translations: Word.create([
        { wordable: Verb.create(name: 'ponerse', language: 'es', meta: { examples: 'un sombrero, etc' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'がんばります', language: 'jp', meta: { group: 1, kanji: '頑張ります' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'esforzarse', language: 'es') },
        { wordable: Verb.create(name: 'tener ánimo', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'ききます', language: 'jp', meta: { group: 1, kanji: '聞きます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'oír', language: 'es') },
        { wordable: Verb.create(name: 'escuchar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'ききます', language: 'jp', meta: { group: 1, kanji: '聞きます', examples: 'せんせいに〜' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'preguntar', language: 'es', meta: { examples: 'al profesor' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'きります', language: 'jp', meta: { group: 1, kanji: '切ります' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'cortar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'けします', language: 'jp', meta: { group: 1, kanji: '消します' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'apagar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'さわります', language: 'jp', meta: { group: 1, kanji: '触ります', examples: 'ドアに〜' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'tocar', language: 'es', meta: { examples: 'una puerta' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'しります', language: 'jp', meta: { group: 1, kanji: '知ります' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'enterarse', language: 'es') },
        { wordable: Verb.create(name: 'saber', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'すいます', language: 'jp', meta: { group: 1, kanji: '吸います', examples: 'たばこを〜' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'fumar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'すみます', language: 'jp', meta: { group: 1, kanji: '住みます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'vivir', language: 'es') },
        { wordable: Verb.create(name: 'residir', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'すわります', language: 'jp', meta: { group: 1, kanji: '座ります' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'sentarse', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'だします', language: 'jp', meta: { group: 1, kanji: '出します' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'sacar', language: 'es', meta: { examples: 'algo del bolso' }) },
        { wordable: Verb.create(name: 'entregar', language: 'es') },
        { wordable: Verb.create(name: 'enviar', language: 'es') },
        { wordable: Verb.create(name: 'presentar', language: 'es', meta: { examples: 'un informe' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'たちます', language: 'jp', meta: { group: 1, kanji: '立ちます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'ponerse de pie', language: 'es') },
        { wordable: Verb.create(name: 'pararse', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'つかいます', language: 'jp', meta: { group: 1, kanji: '使います' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'usar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'つきます', language: 'jp', meta: { group: 1, kanji: '着きます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'llegar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'つくります', language: 'jp', meta: { group: 1, kanji: '作ります' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'hacer', language: 'es') },
        { wordable: Verb.create(name: 'producir', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'つくります', language: 'jp', meta: { group: 1, kanji: '造ります' }),
      translations: Word.create([
        { wordable: Verb.find_by(name: 'hacer', language: 'es') },
        { wordable: Verb.find_by(name: 'producir', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'つれていきます', language: 'jp', meta: { group: 1, kanji: '連れて行きます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'llevar', language: 'es', meta: { examples: 'a alguien' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'てつだいます', language: 'jp', meta: { group: 1, kanji: '手伝います' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'ayudar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'つくります', language: 'jp', meta: { group: 1, kanji: '作ります' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'hacer', language: 'es') },
        { wordable: Verb.create(name: 'producir', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'とまります', language: 'jp', meta: { group: 1, kanji: '泊まります', examples: 'ホテルに〜' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'alojarse', language: 'es', meta: { examples: 'en un hotel' }) },
        { wordable: Verb.create(name: 'hospedarse', language: 'es', meta: { examples: 'en un hotel' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'とります', language: 'jp', meta: { group: 1, kanji: '取ります' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'tomar', language: 'es', meta: { examples: 'en la mano' }) },
        { wordable: Verb.create(name: 'pasar', language: 'es', meta: { examples: 'algo a alguien' }) },
        { wordable: Verb.create(name: 'envejecer', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'とります', language: 'jp', meta: { group: 1, kanji: '撮ります', examples: 'じゃしんを〜' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'sacar', language: 'es', meta: { examples: 'fotos' }) },
        { wordable: Verb.create(name: 'tomar', language: 'es', meta: { examples: 'fotos' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'なおします', language: 'jp', meta: { group: 1, kanji: '直します' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'reparar', language: 'es') },
        { wordable: Verb.create(name: 'corregir', language: 'es') },
        { wordable: Verb.create(name: 'arreglar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'なくします', language: 'jp', meta: { group: 1 }),
      translations: Word.create([
        { wordable: Verb.create(name: 'perder', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'ならいます', language: 'jp', meta: { group: 1, kanji: '習います' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'aprender', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'なります', language: 'jp', meta: { group: 1 }),
      translations: Word.create([
        { wordable: Verb.create(name: 'convertirse en', language: 'es') },
        { wordable: Verb.create(name: 'hacerse', language: 'es') },
        { wordable: Verb.create(name: 'llegar', language: 'es', meta: { examples: 'la primavera, etc' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'ぬぎます', language: 'jp', meta: { group: 1, kanji: '脱ぎます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'quitarse', language: 'es', meta: { examples: 'ropas, calzados, etc' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'のぼります', language: 'jp', meta: { group: 1, kanji: '上ります' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'subir', language: 'es') },
        { wordable: Verb.create(name: 'escalar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'のぼります', language: 'jp', meta: { group: 1, kanji: '登ります' }),
      translations: Word.create([
        { wordable: Verb.find_by(name: 'subir', language: 'es') },
        { wordable: Verb.find_by(name: 'escalar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'のみます', language: 'jp', meta: { group: 1, kanji: '飲みます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'beber', language: 'es') },
        { wordable: Verb.create(name: 'tomar', language: 'es') },
        { wordable: Verb.create(name: 'beber alcohol', language: 'es') },
        { wordable: Verb.create(name: 'tomar alcohol', language: 'es') },
        { wordable: Verb.create(name: 'tomar', language: 'es', meta: { examples: 'medicina' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'のります', language: 'jp', meta: { group: 1, kanji: '乗ります', examples: 'でんしゃを〜' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'subir', language: 'es', meta: { examples: 'en el tren' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'はいります', language: 'jp', meta: { group: 1, kanji: '入ります', examples: 'だいがくに〜' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'entrar', language: 'es', meta: { examples: 'en una cafetería, en una universidad' }) },
        { wordable: Verb.create(name: 'ingresar', language: 'es', meta: { examples: 'en una cafetería, en una universidad' }) },
        { wordable: Verb.create(name: 'tomar', language: 'es', meta: { examples: 'un baño' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'はきます', language: 'jp', meta: { group: 1 }),
      translations: Word.create([
        { wordable: Verb.create(name: 'ponerse', language: 'es', meta: { examples: 'zapatos, pantalones, etc' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'はたらきます', language: 'jp', meta: { group: 1, kanji: '働きます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'trabajar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'はなします', language: 'jp', meta: { group: 1, kanji: '話します' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'hablar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'はらいます', language: 'jp', meta: { group: 1, kanji: '払います' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'pagar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'ひきます', language: 'jp', meta: { group: 1, kanji: '弾きます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'tocar', language: 'es', meta: { examples: 'instrumentos musicales de cuerda, piano, etc' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'ひきます', language: 'jp', meta: { group: 1, kanji: '引きます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'tirar', language: 'es') },
        { wordable: Verb.create(name: 'jalar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'ふります', language: 'jp', meta: { group: 1, kanji: '降ります', examples: 'あめが〜' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'llover', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'まがります', language: 'jp', meta: { group: 1, kanji: '曲がります', examples: 'みぎへ〜' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'girar', language: 'es', meta: { examples: 'a la derecha' }) },
        { wordable: Verb.create(name: 'doblar', language: 'es', meta: { examples: 'a la derecha' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'まちます', language: 'jp', meta: { group: 1, kanji: '待ちます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'esperar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'まわします', language: 'jp', meta: { group: 1, kanji: '回します' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'girar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'もちます', language: 'jp', meta: { group: 1, kanji: '持ちます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'tener algo en la mano', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'もっていきます', language: 'jp', meta: { group: 1, kanji: '持って行きます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'llevar', language: 'es', meta: { examples: 'algo' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'もらいます', language: 'jp', meta: { group: 1 }),
      translations: Word.create([
        { wordable: Verb.create(name: 'recibir', language: 'es', meta: { examples: 'regalos, etc' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'やくにたちます', language: 'jp', meta: { group: 1, kanji: '役に立ちます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'ser útil', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'やすみます', language: 'jp', meta: { group: 1, kanji: '休みます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'descansar', language: 'es') },
        { wordable: Verb.create(name: 'estar de vacaciones', language: 'es') },
        { wordable: Verb.create(name: 'ausentarse', language: 'es') },
        { wordable: Verb.create(name: 'faltar', language: 'es', meta: { examples: 'al trabajo' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'よびます', language: 'jp', meta: { group: 1, kanji: '呼びます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'llamar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'よみます', language: 'jp', meta: { group: 1, kanji: '読みます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'leer', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'わかります', language: 'jp', meta: { group: 1 }),
      translations: Word.create([
        { wordable: Verb.create(name: 'entender', language: 'es') },
        { wordable: Verb.create(name: 'comprender', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'わたります', language: 'jp', meta: { group: 1, kanji: '渡ります', examples: 'はしを〜' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'cruzar', language: 'es', meta: { examples: 'un puente' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'あけます', language: 'jp', meta: { group: 2, kanji: '開けます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'abrir', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'あげます', language: 'jp', meta: { group: 2 }),
      translations: Word.create([
        { wordable: Verb.create(name: 'dar', language: 'es') }
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
      wordable: Verb.create(name: 'あびます', language: 'jp', meta: { group: 2, kanji: '浴びます', examples: 'シャワーを〜' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'tomar', language: 'es', meta: { examples: 'una ducha' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'います', language: 'jp', meta: { group: 2, examples: 'こどもが〜、日本に〜' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'estar', language: 'es', meta: { examples: 'seres vivos' }) },
        { wordable: Verb.create(name: 'haber', language: 'es', meta: { examples: 'seres vivos' }) },
        { wordable: Verb.create(name: 'exister', language: 'es', meta: { examples: 'seres vivos' }) },
        { wordable: Verb.create(name: 'tener', language: 'es', meta: { examples: 'seres vivos' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'いれます', language: 'jp', meta: { group: 2, kanji: '入れます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'meter', language: 'es') },
        { wordable: Verb.create(name: 'introducir', language: 'es') },
        { wordable: Verb.create(name: 'insertar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'うまれます', language: 'jp', meta: { group: 2, kanji: '生まれます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'nacer', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'おきます', language: 'jp', meta: { group: 2, kanji: '起きます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'levantarse', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'おしえます', language: 'jp', meta: { group: 2, kanji: '教えます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'enseñar', language: 'es') },
        { wordable: Verb.create(name: 'dar', language: 'es', meta: { examples: 'una dirección' }) },
        { wordable: Verb.create(name: 'decir', language: 'es', meta: { examples: 'una dirección' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'おぼえます', language: 'jp', meta: { group: 2, kanji: '覚えます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'aprender de memoria', language: 'es') },
        { wordable: Verb.create(name: 'recordar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'おります', language: 'jp', meta: { group: 2, kanji: '降ります', examples: 'でんしゃを〜' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'bajar', language: 'es', meta: { examples: 'del tren' }) }
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
      wordable: Verb.create(name: 'かえます', language: 'jp', meta: { group: 2, kanji: '変えます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'cambiar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'かけます', language: 'jp', meta: { group: 2, examples: 'でんわを〜' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'hacer', language: 'es', meta: { examples: 'una llamada telefónica' }) },
        { wordable: Verb.create(name: 'llamar', language: 'es', meta: { examples: 'por teléfono' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'かけます', language: 'jp', meta: { group: 2, examples: 'めがねを〜' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'ponerse', language: 'es', meta: { examples: 'los lentes' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'かります', language: 'jp', meta: { group: 2, kanji: '借ります' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'tomar prestado', language: 'es') },
        { wordable: Verb.create(name: 'pedir prestado', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'かんがえます', language: 'jp', meta: { group: 2, kanji: '考えます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'pensar', language: 'es') },
        { wordable: Verb.create(name: 'considerar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'きます', language: 'jp', meta: { group: 2, kanji: '着ます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'ponerse', language: 'es', meta: { examples: 'una camisa, etc' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'きをつけます', language: 'jp', meta: { group: 2, kanji: '気をつけます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'prestar atención', language: 'es') },
        { wordable: Verb.create(name: 'tener cuidado', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'くれます', language: 'jp', meta: { group: 2 }),
      translations: Word.create([
        { wordable: Verb.create(name: 'dar', language: 'es', meta: { examples: 'a mi' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'しめます', language: 'jp', meta: { group: 2, kanji: '閉めます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'cerrar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'しらべます', language: 'jp', meta: { group: 2, kanji: '調べます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'averigugar', language: 'es') },
        { wordable: Verb.create(name: 'investigar', language: 'es') }
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
      wordable: Verb.create(name: 'たべます', language: 'jp', meta: { group: 2, kanji: '食べます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'comer', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'たります', language: 'jp', meta: { group: 2, kanji: '足ります' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'ser suficiente', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'つかれます', language: 'jp', meta: { group: 2, kanji: '疲れます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'cansarse', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'つけます', language: 'jp', meta: { group: 2 }),
      translations: Word.create([
        { wordable: Verb.create(name: 'encender', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'でかけます', language: 'jp', meta: { group: 2, kanji: '出かけます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'salir', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'できます', language: 'jp', meta: { group: 2 }),
      translations: Word.create([
        { wordable: Verb.create(name: 'poder', language: 'es') },
        { wordable: Verb.create(name: 'ser capaz de', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'でます', language: 'jp', meta: { group: 2, kanji: '出ます', examples: 'おつりが〜、きっさてんを〜、だいがくを〜' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'salir', language: 'es', meta: { examples: 'la vuelta, de una cafetería' }) },
        { wordable: Verb.create(name: 'graduarse', language: 'es', meta: { examples: 'de la escuela' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'とめます', language: 'jp', meta: { group: 2, kanji: '止めます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'parar', language: 'es') },
        { wordable: Verb.create(name: 'estacionar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'ねます', language: 'jp', meta: { group: 2, kanji: '寝ます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'acostarse', language: 'es') },
        { wordable: Verb.create(name: 'irse a la cama', language: 'es') },
        { wordable: Verb.create(name: 'dormir', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'のりかえます', language: 'jp', meta: { group: 2, kanji: '乗り換えます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'transbordar', language: 'es', meta: { examples: 'trenes, etc' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'はじめます', language: 'jp', meta: { group: 2, kanji: '始めます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'empezar', language: 'es') },
        { wordable: Verb.create(name: 'iniciar', language: 'es') },
        { wordable: Verb.create(name: 'comenzar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'まけます', language: 'jp', meta: { group: 2, kanji: '負けます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'perder', language: 'es', meta: { examples: 'el partido, etc' }) },
        { wordable: Verb.create(name: 'ser derrotado', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'みせます', language: 'jp', meta: { group: 2, kanji: '見せます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'mostar', language: 'es') },
        { wordable: Verb.create(name: 'enseñar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'みます', language: 'jp', meta: { group: 2, kanji: '見ます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'ver', language: 'es') },
        { wordable: Verb.create(name: 'mirar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'むかえます', language: 'jp', meta: { group: 2, kanji: '迎えます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'recoger', language: 'es') },
        { wordable: Verb.create(name: 'recibir', language: 'es', meta: { examples: 'a gente' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'やめます', language: 'jp', meta: { group: 2, examples: 'かいしゃを〜' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'dimitir', language: 'es', meta: { examples: 'una compañía' }) },
        { wordable: Verb.create(name: 'dejar', language: 'es', meta: { examples: 'una compañía' }) },
        { wordable: Verb.create(name: 'renunciar', language: 'es', meta: { examples: 'una compañía' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'わすれます', language: 'jp', meta: { group: 2, kanji: '忘れます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'olvidar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'あんあいします', language: 'jp', meta: { group: 3, kanji: '案内します' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'guiar por', language: 'es', meta: { examples: 'una ciudad' }) },
        { wordable: Verb.create(name: 'indicar el camino', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'うんてんします', language: 'jp', meta: { group: 3, kanji: '運転します' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'conducir', language: 'es', meta: { examples: 'un vehículo' }) },
        { wordable: Verb.create(name: 'manejar', language: 'es', meta: { examples: 'un vehículo' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'かいものします', language: 'jp', meta: { group: 3, kanji: '買い物します' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'hacer compras', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'きます', language: 'jp', meta: { group: 3, kanji: '来ます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'venir', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'けっこんします', language: 'jp', meta: { group: 3, kanji: '結婚します' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'casarse', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'けんがくします', language: 'jp', meta: { group: 3, kanji: '見学します' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'visitar un lugar', language: 'es', meta: { examples: 'principalmente con fines de estudio' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'けんきゅうします', language: 'jp', meta: { group: 3, kanji: '研究します' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'investigar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'さんぽします', language: 'jp', meta: { group: 3, kanji: '散歩します', examples: 'こうえんを〜' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'pasear', language: 'es', meta: { examples: 'por el parque' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'ざんぎょうします', language: 'jp', meta: { group: 3, kanji: '残業します' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'trabajar horas extras', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'します', language: 'jp', meta: { group: 3 }),
      translations: Word.create([
        { wordable: Verb.create(name: 'hacer', language: 'es') },
        { wordable: Verb.create(name: 'ponerse', language: 'es', meta: { examples: 'la corbata' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'しゅうりします', language: 'jp', meta: { group: 3, kanji: '修理します' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'reparar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'しゅっちょうします', language: 'jp', meta: { group: 3, kanji: '出張します' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'ir de viaje por trabajo', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'しょうかいします', language: 'jp', meta: { group: 3, kanji: '紹介します' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'presentar', language: 'es', meta: { examples: 'a alguien' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'しょくじします', language: 'jp', meta: { group: 3, kanji: '食事します' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'comer', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'しんぱいします', language: 'jp', meta: { group: 3, kanji: '心配します' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'preocuparse', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'せつめいします', language: 'jp', meta: { group: 3, kanji: '説明します' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'explicar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'せんたくします', language: 'jp', meta: { group: 3, kanji: '洗濯します' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'lavar', language: 'es', meta: { examples: 'la ropa' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'そうじします', language: 'jp', meta: { group: 3, kanji: '掃除します' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'limpiar', language: 'es', meta: { examples: 'una habitación' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'つれてきます', language: 'jp', meta: { group: 3, kanji: '連れてきます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'traer', language: 'es', meta: { examples: 'a alguien' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'でんわします', language: 'jp', meta: { group: 3, kanji: '電話します' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'llamar por teléfono', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'べんきょうします', language: 'jp', meta: { group: 3, kanji: '勉強します' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'estudiar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'もってきます', language: 'jp', meta: { group: 3, kanji: '持ってきます' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'traer', language: 'es', meta: { examples: 'algo' }) }
      ])
    },
    {
      wordable: Verb.create(name: 'よやくします', language: 'jp', meta: { group: 3, kanji: '予約します' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'reservar', language: 'es') }
      ])
    },
    {
      wordable: Verb.create(name: 'りゅうがくします', language: 'jp', meta: { group: 3, kanji: '留学します' }),
      translations: Word.create([
        { wordable: Verb.create(name: 'estudiar en el extranjero', language: 'es') }
      ])
    }
  ])

  Category.find_by(name: 'masu form').words.concat(verbs)
end

Exercise.transaction do
  exercises = Exercise.create([
    {
      exerciseable: Sentence.create(answers: %w(ねるとき、「おやすみなさい」といいます。 ねるとき、「おやすみなさい」といいます), clues: ['ねます', '「おやすみなさい」'], examples: [ { clues: ['でかけます', '「いってきます」'], sentence: 'でかける とき、「いってきます」と いいます。' }, { clues: ['うちへ かえります', '「ただいま」'], sentence: 'うちへ かえった とき、「ただいま」と いいます。' } ], language: 'jp')
    },
    {
      exerciseable: Sentence.create(answers: %w(あさともだちにあったとき、「おはようございます」といいます。 あさともだちにあったとき、「おはようございます」といいます), clues: ['あさ ともだちに あいます', '「おはよう ございます」'], examples: [ { clues: ['でかけます', '「いってきます」'], sentence: 'でかける とき、「いってきます」と いいます。' }, { clues: ['うちへ かえります', '「ただいま」'], sentence: 'うちへ かえった とき、「ただいま」と いいます。' } ], language: 'jp')
    },
    {
      exerciseable: Sentence.create(answers: %w(きものをもらったとき、「ありがとうございます」といいます。 きものをもらったとき、「ありがとうございます」といいます), clues: ['きものを もらいます', '「ありがとう ございます」'], examples: [ { clues: ['でかけます', '「いってきます」'], sentence: 'でかける とき、「いってきます」と いいます。' }, { clues: ['うちへ かえります', '「ただいま」'], sentence: 'うちへ かえった とき、「ただいま」と いいます。' } ], language: 'jp')
    },
    {
      exerciseable: Sentence.create(answers: %w(ぶちょうのへやにはいるとき、「しつれいします」といいます。 ぶちょうのへやにはいるとき、「しつれいします」といいます), clues: ['ぶちょうのへやに はいります', '「しつれいします」'], examples: [ { clues: ['でかけます', '「いってきます」'], sentence: 'でかける とき、「いってきます」と いいます。' }, { clues: ['うちへ かえります', '「ただいま」'], sentence: 'うちへ かえった とき、「ただいま」と いいます。' } ], language: 'jp')
    },
  ])

  # Category.find(42).exercises.concat(exercises)
end
