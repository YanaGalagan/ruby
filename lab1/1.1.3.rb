puts"#Введи команду языка ruby:"
rubycomand=STDIN.gets.chomp
system "ruby -e \"#{rubycomand}\""

puts"#Введи команду ОС:"
occomand=STDIN.gets.chomp
system occomand
