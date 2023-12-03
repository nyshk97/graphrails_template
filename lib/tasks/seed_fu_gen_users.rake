namespace :seed_fu_gen_users do
  desc 'usersテーブルのデータを元にseedファイルを生成'
  task create_seeds_by_db: :environment do
    SeedFu::Writer.write('./db/fixtures/01_users_gen.rb', class_name: 'User') do |w|
      User.all.each do |user|
        w << user.as_json(except: %i[created_at updated_at])
      end
    end
  end
end
