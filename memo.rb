require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.chomp

if memo_type == "1"
  puts "拡張子を除いたファイルを入力してください"
  file_name = gets.chomp
  puts "メモしたい内容を記入してください"
  puts "完了したらCtrl+Dをおします"
  
  memo_type = STDIN.readlines
  
  CSV.open("#{file_name}.csv",'w') do |memo|
   memo << ["#{memo_type}"]
end

elsif memo_type == "2"
  puts "編集したいファイル名を入力してください"
  file_name = gets.chomp
  puts "編集したい内容を記入してください"
  puts "完了したらCtrl + Dをおします"
    
  memo_type = STDIN.readlines
    
  CSV.open("#{file_name}.csv", "a") do |memo|
     memo << ["#{memo_type}"]
 end
  
end