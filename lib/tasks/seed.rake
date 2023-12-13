Dir.glob(File.join(Rails.root, 'db', 'fixtures', '*.rb')).each do |file|
  desc "Load the seed data from db/fixtures/#{File.basename(file)}."
  task "db:seed:#{File.basename(file).gsub(/\..+$/, '')}" => :environment do
    load(file)
  end
end
