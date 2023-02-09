

def simple(ch)
	return false if ch <= 1
	2.upto(Math.sqrt(ch).to_i).each {|i| return false if ch % i == 0}
        true
end

#Метод 1. Найти максимальный простой делитель числа.
def maxdel(ch)
	del=0
	ch.downto(1).each {|div| del = div if simple(div) and ch % div == 0 and div > del}
	if del==0
		return "Таких делителей нет"
	else 
		return del
	end
end	
	
#Произведение цифр числа, не делящихся на 5
def notdel5(ch)
	pr=1
	count = 0
	ch.digits.each{
	|digit| 
	if digit%5!=0
		pr*=digit  
		count+=1
	end }
	if count == 0
		return "Подходящих цифр нет."
	else 
		return pr
	end
end
	
#НОД максимального нечетного непростого делителя числа и произведения цифр данного числа	

def NOD(del, pr)
	while del!=pr
        	if del > pr
        		del -= pr
        	else pr -= del
        	end
    end
    return del
end


def method3(ch)
	pr=1
	maxdel=0
	ch.digits.each{|x| pr*=x}
	ch.downto(1).each {|div| maxdel=div if div%2!=0 and div>maxdel and simple(div)==false and ch%div==0}
	if pr==0
		return "Невозможно найти НОД, произведение равно 0"
	end
	puts "Максимальный непростой нечётный делитель числа: #{maxdel}"
    puts "Произведение цифр данного числа: #{pr}"
    n=NOD(pr,maxdel)
    return n
end

puts "Введите число для обработки:"
ch = gets.to_i
puts "Метод 1, найти максимальный простой делитель числа: #{maxdel(ch)}"
puts "Метод 2, найти произведение цифр числа, не делящихся на 5: #{notdel5(ch)}"
puts "Метод 3, Найти НОД максимального нечетного непростого делителя числа и произведения цифр данного числа: #{method3(ch)}"

