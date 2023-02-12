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
def check_global_max(ar, ind)
	ind=Integer(ind)
	ar[ind]==ar.max
end


#1.15
def check_global_min(ar, ind)
	ind=Integer(ind)
	ar[ind]==ar.min
end

#1.27
def left(ar)
	ar.rotate(1)
end

#1.39
def chet_nechet(ar)
	ar.each_index{|x| puts ar[x] if x%2==0}
	ar.each_index{|x| puts ar[x] if x%2!=0}
end

#1.51
def create_L1(ar)
	arr= Array.new
	ar.each{|x| arr.push(x) if !(arr.include?(x)) }
	arr
end

def kolvo_elem(ar,ch)
	k=0
	ar.each{|x| k+=1 if x==ch}
	k
end


def create_L2(ar, newar)
	arr=Array.new
	newar.each{
		|x|
		k=kolvo_elem(ar,x) 
		arr.push(k)
		}
	arr
end

def task_3(ar)
	ar_L1=create_L1(ar)
	ar_L2=create_L2(ar,ar_L1)
	puts "L1: #{ar_L1}"
	puts "L2: #{ar_L2}"
end

file_path="/home/yana/rubyyy/array.txt"
file = File.open(file_path)
array = file.readline.split(' ').map(&:to_i)


methods = [:check_global_max, :check_global_min, :left,:chet_nechet, :task_3]
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



if method_num==1 or method_num==2
  puts 'Введите номер элемента:'
  print"a="
  a=STDIN.gets.chomp.to_i
  res = method(methods[method_num-1]).call(array,a)
else
  res = method(methods[method_num-1]).call(array)
end
puts res.inspect


