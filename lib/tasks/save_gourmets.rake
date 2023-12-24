require 'csv'

csv_file = 'lib/gourmets.csv'

namespace :gourmets do
  desc '都道府県ごとのグルメ情報を保存する'
  task save_to_table: :environment do
    CSV.foreach(csv_file, headers: true) do |row|
      prefecture_name = row['都道府県名']
      prefecture = Prefecture.find_by(name: prefecture_name)

      unless prefecture
        puts "エラー：都道府県 #{prefecture_name} が見つかりません。"
        next
      end

      gourmet = Gourmet.find_or_initialize_by(
        name: row['グルメ名'],
        prefecture_id: prefecture.id
      )

      gourmet.assign_attributes(
        description: row['説明'],
        image: File.open(row['画像URL'])
      )

      if gourmet.save
        if gourmet.new_record?
          puts "都道府県 #{prefecture_name} の新しいグルメ #{gourmet.name} を保存しました。"
        else
          puts "都道府県 #{prefecture_name} の既存のグルメ #{gourmet.name} を更新しました。"
        end
      else
        puts "エラー：都道府県 #{prefecture_name} のグルメ #{gourmet.name} 保存に失敗しました。"
        puts "#{gourmet.errors.full_messages}"
      end
    end
  end
end
