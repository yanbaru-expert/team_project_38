EMAIL = "test@example.com"
PASSWORD = "password"

# テストユーザーが存在しないときだけ作成
User.find_or_create_by!(email: EMAIL) do |user|
  user.password = PASSWORD
  puts "ユーザーの初期データインポートに成功しました。"
end
class ImportCsv
  Movie.destroy_all
  def self.import(path)
    list = []
    CSV.foreach(path, headers: true) do |row|
      list << row.to_h
    end
    list
  end
  def self.user_data
    list = import('db/csv_data/movie_data.csv')

    puts "インポート処理を開始"
    Movie.create!(list)
    puts "インポート完了!!"
  end
end
