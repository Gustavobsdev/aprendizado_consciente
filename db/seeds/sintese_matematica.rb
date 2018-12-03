include ActionDispatch::TestProcess

category = Category.create!(
  title: 'Matemática',
  slug: 'matematica'
)

content = Content.create!(
  title: 'Síntese da Matemática ',
  image: fixture_file_upload(Rails.root.join('app', 'assets', 'images', 'sintese_matematica', 'image_4.jpg'), 'image/jpg'),
  slug: 'sintese_matematica',
  category: category
)

TextParagraph.create!(
  order: 1,
  content: content,
  text: 'A matemática foi construída e desenvolvida para suprir a necessidade de métodos para desenvolvimento de atividades cotidianas, como contar e demarcar terrenos, através da compreensão de quantidade e forma, como também para solucionar problemas de outras áreas da ciência (Física, Química, Astronomia), mostrando assim o seu papel indispensável para todo o ramo científico.'
)
ImageParagraph.create!(
  order: 2,
  content: content,
  image:  fixture_file_upload(Rails.root.join('app', 'assets', 'images', 'sintese_matematica', 'image_1.png'), 'image/png')
)
TextParagraph.create!(
  order: 3,
  content: content,
  text: 'O desenvolvimento da matemática está intrinsecamente  relacionado com o desenvolvimento social e econômico da sociedade, ela surgiu justamente como um método para o homem organizar sua vida e seus afazeres, portanto sua compreensão sempre foi ligada à cultura que a explorava, por exemplo, os Babilônicos desenvolveram uma matemática que suprisse suas necessidades práticas do dia-a-dia, e posteriormente começou a ser desenvolvida na Grécia a matemática quase que puramente científica, sem utilidade ordinária.'
)
ImageParagraph.create!(
  order: 4,
  content: content,
  image:  fixture_file_upload(Rails.root.join('app', 'assets', 'images', 'sintese_matematica', 'image_2.jpg'), 'image/jpg')
)
TextParagraph.create!(
  order: 5,
  content: content,
  text: '***Arquimedes*** nasceu em Siracusa, atual Itália, no ano 287 a.C. Foi um matemático, engenheiro, físico, inventor e astrônomo grego.'
)
ImageParagraph.create!(
  order: 6,
  content: content,
  image:  fixture_file_upload(Rails.root.join('app', 'assets', 'images', 'sintese_matematica', 'image_3.jpg'), 'image/jpg')
)
TextParagraph.create!(
  order: 7,
  content: content,
  text: '***Tábua matemática Plimpton***

Escrita entre meados de 1900 e 1600 a.C., a mesma compreende três colunas de caracteres que contém números que representam a medida da hipotenusa e de um cateto de triângulos retângulos.'
)
ImageParagraph.create!(
  order: 8,
  content: content,
  image:  fixture_file_upload(Rails.root.join('app', 'assets', 'images', 'sintese_matematica', 'image_4.jpg'), 'image/jpg')
)
TextParagraph.create!(
  order: 9,
  content: content,
  text: 'A História da Matemática tem origens discutíveis, e muito se questiona o porquê de a matemática existir e se ela é mesmo real, o que levou a duas grandes linhas de pensamento, sendo elas: o realismo matemático, que defende que a matemática é real, absoluta e que ela existe não só porque a descobrimos, mas porque ela é como uma tradução, uma linguagem do universo; e por outro lado, o antirrealismo, que diz que a matemática não passa de uma ficção, que só existe dentro de um contexto criado, a própria matemática. '
)
ImageParagraph.create!(
  order: 10,
  content: content,
  image:  fixture_file_upload(Rails.root.join('app', 'assets', 'images', 'sintese_matematica', 'image_5.jpg'), 'image/jpg')
)
TextParagraph.create!(
  order: 11,
  content: content,
  text: 'O mais incrível de tudo é que ela funciona! E é uma ferramenta imprescindível na atualidade e está notoriamente em todo o lugar e com ela conseguimos chegar a lugares inimagináveis, como até você que está atrás desta tela. O mundo da matemática existe e não é inacessível, há uma extensão de conceitos, formas, domínios a serem descobertos neste horizonte, o qual só podemos descobrir estudando e aprofundando nosso conhecimento.'
)
TextParagraph.create!(
  order: 12,
  content: content,
  text: 'Referências Bibliográficas

Figura 1: http://www.curtamais.com.br/uploads/conteudos/ba5c470ac5085435bdef748d8bec24dc.png

Figura 2: http://revistaepoca.globo.com/Revista/Epoca/foto/0,,53011876,00.jpg

Figura 3: https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/Plimpton_322.jpg/250px-Plimpton_322.jpg

Figura 4: https://2.bp.blogspot.com/-GTkCYGMl8Xw/Wxgws-efa2I/AAAAAAAAA4s/fFFaWaGj6doAZlzKndv0-eU_GeHxywfuQCLcBGAs/s1600/antonio-claudio-lage-buffara.jpg

Figura 5: http://domtotal.com/img/noticias/2018-02/1232847_348538.jpg

RAMOS, Taurino Costa. A Importância Da Matemática Na Vida Cotidiana Dos Alunos Do Ensino Fundamental Ii,Cairu em Revista, Ano 06, p.201-218, Jan/Fev 2017.

ROSSETTO, Hallynnee Héllenn Pires. Um Resgate Histórico: A Importância Da História Da Matemática. 2013. 38f. Monografia de Especialização - Universidade Tecnológica Federal Do Paraná, Medianeira, 2013. '
)
TextParagraph.create!(
  order: 13,
  content: content,
  text: '## Conteudos relacionados

[História da Computação](/contents/sintese_matematica)
'
)
