require 'htmlbeautifier'

# 整形したいerbファイルのパス
file_path = '../first_app/app/views/posts/index.html.erb'
file_path2 = '../first_app/app/views/posts/new.html.erb'

# ファイルを読み込み
erb_content = File.read(file_path)
erb_content2 = File.read(file_path2)

# HTMLとして整形
beautified_content = HtmlBeautifier.beautify(erb_content)
beautified_content2 = HtmlBeautifier.beautify(erb_content2)

# 整形した内容をファイルに書き込み
File.write(file_path, beautified_content)
File.write(file_path, beautified_content2)

puts "ERBファイルの整形が完了しました：#{file_path},#{file_path2}"