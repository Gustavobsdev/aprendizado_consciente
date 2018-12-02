include ActionDispatch::TestProcess

content = Content.create(title: 'Computação')

TextParagraph.create(
  order: 1,
  content: content,
  text: 'Quando você imagina que tenha surgido o primeiro computador? 10,20, 50 anos atrás?'
)

ImageParagraph.create(
  order: 2,
  content: content,
  image:  fixture_file_upload(Rails.root.join('app', 'assets', 'images', 'computacao', 'image_1.jpg'), 'image/jpg') 
)
TextParagraph.create(
  order: 3,
  content: content,
  text: 'O termo computador foi sendo atribuído as pessoas que manuseavam ferramentas de calcular em geral, ou seja, o primeiro computador foi uma calculadora. E surgiu a quase 2000 anos atrás. Porém, ao invés de fazer contas aritméticas, ela era usada para prever posições astronômicas e eclipses.'
)
TextParagraph.create(
  order: 4,
  content: content,
  text: 'A ***máquina de Anticítera*** como é conhecida, surgiu na Grécia antiga e dentre as suas principais funções estava a de calendário e também era usada na astrologia (pseudociência na qual as posições dos astros no dia do nascimento influenciam na personalidade da pessoa)nica (diferente das digitais) e fazia uso de rodas e engrenagem para realizar as operações fundamentais: soma e subtrações (multiplicação e divisão só eram realizadas por repetição). A La pascaline foi planejada em 1642, porém só em 1820 houve a comercialização em larga escala de um modelo um pouco mais avançado criada por Thomas Charles de Colmar.).  Na direita temos o esquema da máquina e na direita sua maior engrenagem (de aprox. 140 mm de diâmetro).'
)
ImageParagraph.create(
  order: 5,
  content: content,
  image: fixture_file_upload(Rails.root.join('app', 'assets', 'images', 'computacao', 'image_2.jpeg'), 'image/jpeg')
)
ImageParagraph.create(
  order: 6,
  content: content,
  image: fixture_file_upload(Rails.root.join('app', 'assets', 'images', 'computacao', 'image_3.jpeg'), 'image/jpeg')
)
TextParagraph.create(
  order: 7,
  content: content,
  text: 'Dando um salto na história chegamos à primeira calculadora mais semelhante com que temos hoje, porém, era mecânica (diferente das digitais) e fazia uso de rodas e engrenagem para realizar as operações fundamentais: soma e subtrações (multiplicação e divisão só eram realizadas por repetição). A La pascaline foi planejada em 1642, porém só em 1820 houve a comercialização em larga escala de um modelo um pouco mais avançado criada por Thomas Charles de Colmar.'
)
ImageParagraph.create(
  order: 8,
  content: content,
  image: fixture_file_upload(Rails.root.join('app', 'assets', 'images', 'computacao', 'image_4.png'), 'image/png')
)
ImageParagraph.create(
  order: 9,
  content: content,
  image: fixture_file_upload(Rails.root.join('app', 'assets', 'images', 'computacao', 'image_5.png'), 'image/png')
)
TextParagraph.create(
  order: 10,
  content: content,
  text: 'Já em 1833, ***Babbage*** apresentou “um computador programável” que também era usado para cálculos, entretanto era capaz de realizá-los em uma sequência definida através de cartões perfurados. Naquela época não tinhas as linhas de código, tudo era feito de maneira mecânica, por isso os cartões eram necessários.'
)
TextParagraph.create(
  order: 11,
  content: content,
  text: 'Durante a segunda guerra mundial, surgiram muitas tecnologias (inclusive o micro-ondas que usamos hoje!), uma delas foi o computador eletrônico. O mais conhecido era o ENIAC (não, não é o brainiac da DC haha). E sim era um computador enorme que tinha mais de 18000 válvulas (algo semelhante a uma lâmpada) e precisava de várias pessoas para fosse possível usá-lo.'
)
ImageParagraph.create(
  order: 12,
  content: content,
  image: fixture_file_upload(Rails.root.join('app', 'assets', 'images', 'computacao', 'image_6.jpg'), 'image/jpg')
)
ImageParagraph.create(
  order: 13,
  content: content,
  image: fixture_file_upload(Rails.root.join('app', 'assets', 'images', 'computacao', 'image_7.jpg'), 'image/jpg')
)
TextParagraph.create(
  order: 14,
  content: content,
  text: 'Outro personagem extremamente importante para a maravilha que é a computação foi Alan Turing. Ele foi responsável por criar a Máquina de Turing, que era um modelo abstrato que futuramente seria capaz de modelar qualquer computador digital a partir disso.  Alan também teve um importante papel para decifrar as comunicações alemãs durante a guerra. Porém se suicidou em após ser submetido a um “tratamento” para a homossexualidade.'
)
ImageParagraph.create(
  order: 15,
  content: content,
  image: fixture_file_upload(Rails.root.join('app', 'assets', 'images', 'computacao', 'image_8.jpg'), 'image/jpg')
)
TextParagraph.create(
  order: 16,
  content: content,
  text: 'O Filme o jogo da imitação conta a história dele: [link](https://www.youtube.com/watch?v=YIkKbMcJL_4)'
)
ImageParagraph.create(
  order: 17,
  content: content,
  image: fixture_file_upload(Rails.root.join('app', 'assets', 'images', 'computacao', 'image_9.jpg'), 'image/jpg')
)
TextParagraph.create(
  order: 18,
  content: content,
  text: 'Entre 1959 — 1964 já era possível ver computadores bem menores, como por exemplo o IBM 7030. Tais computadores passaram a usar transistor no lugar das “lâmpadas”, o que possibilitou diminuir o seu tamanho assim como realizar cálculos de maneira mais rápida. Detalhe, custavam em torno de 13 milhões de dólares.

Computadores a partir de 1970: foi quando surgiram os microprocessadores e computadores para usos pessoais. Permitindo que as máquinas realizassem muitos mais cálculos por segundo do que qualquer uma antes. '
)
ImageParagraph.create(
  order: 19,
  content: content,
  image: fixture_file_upload(Rails.root.join('app', 'assets', 'images', 'computacao', 'image_10.jpg'), 'image/jpg')
)
TextParagraph.create(
  order: 18,
  content: content,
  text: 'Altair 8800 - 1975'
)
TextParagraph.create(
  order: 19,
  content: content,
  text: 'Vendo o sucesso do Altair, Steve Jobs (fundador da Apple) sentiu que ainda faltava algo no projeto: apesar de suas funcionalidades, este computador não era fácil de ser utilizado por pessoas comuns.  Em sua opinião, um computador deveria representar de maneira gráfica o seu funcionamento, ao contrário de luzes que acendiam e apagavam. Por isso, o Apple I, lançado em 1976, pode ser considerado como o primeiro computador pessoal, pois acompanhava um pequeno monitor.'
)
ImageParagraph.create(
  order: 20,
  content: content,
  image: fixture_file_upload(Rails.root.join('app', 'assets', 'images', 'computacao', 'image_11.jpg'), 'image/jpg')
)
TextParagraph.create(
  order: 21,
  content: content,
  text: 'A partir disso, a tecnologia foi sendo refinada e os computadores passaram a acompanhar um monitor (semelhante ao que temos hoje). Até chegarmos nos computadores que literalmente cabem no nosso bolso ou mochila e que são muito melhores das mais caras máquinas que existiam antes. Isso mostra a importância de sempre estarmos desenvolvendo e pesquisando novas tecnologias, ainda que pareça que não há mais nada para ser desenvolvido.'
)
ImageParagraph.create(
  order: 22,
  content: content,
  image: fixture_file_upload(Rails.root.join('app', 'assets', 'images', 'computacao', 'image_12.jpg'), 'image/jpg')
)
ImageParagraph.create(
  order: 23,
  content: content,
  image: fixture_file_upload(Rails.root.join('app', 'assets', 'images', 'computacao', 'image_13.jpg'), 'image/jpg')
)
ImageParagraph.create(
  order: 24,
  content: content,
  image: fixture_file_upload(Rails.root.join('app', 'assets', 'images', 'computacao', 'image_14.jpg'), 'image/jpg')
)
ImageParagraph.create(
  order: 25,
  content: content,
  image: fixture_file_upload(Rails.root.join('app', 'assets', 'images', 'computacao', 'image_15.jpeg'), 'image/jpeg')
)
