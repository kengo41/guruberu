require 'csv'

csv_file = 'lib/prefectures.csv'

namespace :prefectures do
  desc '都道府県を保存する'
  task save_to_table: :environment do
    CSV.foreach(csv_file, headers: true) do |row|
      prefecture_name = row['都道府県名']

      unless Prefecture.exists?(name: prefecture_name)
        prefecture = Prefecture.new(name: prefecture_name)

        if prefecture.save
          puts "都道府県：#{prefecture_name}を保存しました。"
        else
          puts "都道府県：#{prefecture_name}の保存に失敗しました。"
          puts "#{prefecture.errors.full_messages}"
        end
      else
        puts "都道府県：#{prefecture_name}は既に保存されています。"
      end
    end
  end
end
