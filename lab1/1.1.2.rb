user=ARGV[0]

puts "Привет, #{user}"
puts"#Какой язык у тебя любимый?"
lang=STDIN.gets.chomp
case lang
	when"ruby"
		puts"Ты подлиза!"
	when"C++"
		puts"Перваш!"
	else 
		puts "Скоро будет ruby..!"
end
