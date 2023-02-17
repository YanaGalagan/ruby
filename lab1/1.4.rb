#1.3 Дан целочисленный массив и натуральный индекс (число, меньшее 
#размера массива). Необходимо определить является ли элемент по
#указанному индексу глобальным максимумом.

#1.15 Дан целочисленный массив и натуральный индекс (число, меньшее
#размера массива). Необходимо определить является ли элемент по
#указанному индексу локальным минимумом.

#1.27 Дан целочисленный массив. Необходимо осуществить циклический
#сдвиг элементов массива влево на одну позицию.

#1.39 Дан целочисленный массив. Необходимо вывести вначале его
#элементы с четными индексами, а затем - с нечетными.

#1.51. Для введенного списка построить два списка L1 и L2, где элементы L1
#это неповторяющиеся элементы исходного списка, а элемент списка L2 с
#номером i показывает, сколько раз элемент списка L1 с таким номером
#повторяется в исходном.

#1.3
def global_max?(ar, ind)
	ind=Integer(ind)
	ar[ind]==ar.max
end


#1.15
def global_min?(ar, ind)
	ind=Integer(ind)
	ar[ind]==ar.min
end

#1.27
def cycle_left(ar)
	ar.rotate(1)
end

#1.39
def even_elements(ar)
	arr=Array.new
	ar.each_index{|x| arr.push(ar[x]) if x%2==0}
	arr
	
end

def odd_element(ar)
	arr=Array.new
	ar.each_index{|x| arr.push(ar[x]) if x%2!=0}
	arr
end

#1.51
def array_of_elements_without_repeats(ar)
	arr= Array.new
	ar.each{|x| arr.push(x) if !(arr.include?(x)) }
	arr
end

def kolvo_elements_with_value(ar,ch)
	k=0
	ar.each{|x| k+=1 if x==ch}
	k
end


def array_of_number_of_elements(ar, newar)
	arr=Array.new
	newar.each{
		|x|
		k=kolvo_elements_with_value(ar,x) 
		arr.push(k)
		}
	arr
end

file_path="/home/yana/rubyyy/array.txt"
file = File.open(file_path)
array = file.readline.split(' ').map(&:to_i)

def create_array_of_number_of_elemets_without_repeats(arr)
	ar_L1=array_of_elements_without_repeats(arr)
	ar_L2=array_of_number_of_elements(arr,ar_L1)
	ar_L2
end

puts 'Выберите:'
puts '1. Результат проверки на глобальный максимум
2. Результат проверки на глобальный минимум
3. Результат циклического сдвига
4. Вывод элементов с чётными индексами, затем нечётными
5. Построить два списка L1 и L2, где элементы L1 это неповторяющиеся элементы исходного списка, а элемент списка L2 с
номером i показывает, сколько раз элемент списка L1 с таким номером повторяется в исходном.'

method_num = STDIN.gets.chomp.to_i
unless method_num.between?(1, methods.length)
  puts 'Неизвестный метод'
  return
end




case method_num
	when 1
		puts 'Введите номер элемента:'
  		print"a="
  		a=STDIN.gets.chomp.to_i
  		puts global_max?(array, a)
  	when 2
  		puts 'Введите номер элемента:'
  		print"a="
  		a=STDIN.gets.chomp.to_i
  		puts global_min?(array, a)
  	when 3
  		puts "Результат: #{cycle_left(array)}"
  	when 4
  		puts"Элементы списка с чётными индексами: #{even_elements(array)}"
  		puts"Элементы списка с нечётными индексами: #{odd_element(array)}"

  	when 5
		ar_L1=array_of_elements_without_repeats(array)
		ar_L2=create_array_of_number_of_elemets_without_repeats(array)
		puts "L1: #{ar_L1}"
		puts "L2: #{ar_L2}"
end

