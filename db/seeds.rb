# テストユーザーデータ
EMAIL = "test@example.com"
PASSWORD = "password"

# 管理者ユーザーデータ
ADMIN_EMAIL = "admin@example.com"
ADMIN_PASSWORD = "password"

# テストユーザーが存在しないときだけ作成
User.find_or_create_by!(email: EMAIL) do |user|
  user.password = PASSWORD
  puts "ユーザーの初期データインポートに成功しました。"
end
Movie.destroy_all
ImportCsv.user_data

# 初期 管理者ユーザーデータを作成
AdminUser.find_or_create_by!(email: ADMIN_EMAIL) do |adminuser|
  adminuser.password = ADMIN_PASSWORD
  adminuser.password_confirmation = ADMIN_PASSWORD
  puts "管理者ユーザーの初期データインポートに成功しました。"
end
