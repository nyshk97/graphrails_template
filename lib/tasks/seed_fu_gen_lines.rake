namespace :seed_fu_gen_lines do
  desc 'linesテーブルのデータを元にseedファイルを生成'
  task create_seeds_by_db: :environment do
    SeedFu::Writer.write('./db/fixtures/02_lines_gen.rb', class_name: 'Line') do |w|
      Line.all.each do |line|
        w << line.as_json(except: %i[created_at updated_at])
      end
    end
  end
end
