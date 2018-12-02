namespace :db do
  task :seed_all => :environment do
    desc "Seed based on the file with the same name in `db/seeds/*.rb`"
    Dir[Rails.root.join('db', 'seeds', '*.rb')].each do |filename|
      load(filename) if File.exist?(filename)
    end
  end
end
