include ActionDispatch::TestProcess

category = Category.create!(
  title: 'Estrutura da Materia',
  slug: 'estrutura_materia'
)

Content.create!(
  title: 'Atomo',
  image: fixture_file_upload(Rails.root.join('app', 'assets', 'images', 'origem_universo', 'atomo.png'), 'image/png'),
  slug: 'atomo',
  category: category
)
Content.create!(
  title: 'Origem do Universo',
  image: fixture_file_upload(Rails.root.join('app', 'assets', 'images', 'origem_universo', 'universe.png'), 'image/png'),
  slug: 'atomo',
  category: category
)
