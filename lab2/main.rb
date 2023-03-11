
require_relative 'student'
require_relative 'student_short'

student1 = Student.new(first_name:'Иван', middle_name:'Иванович' ,surname:'Иванов',id:1,phone_number:'+79285698741',
	mail:'ivan555@yandex.ru', git:'github.com/vanSuper', telegram:'@Vanusha')

student2 = Student.new(first_name:'Илья',middle_name:'Александрович',surname:'Петров', id:2, phone_number:'+79285698741',
	mail:'ilisha@mail.ru')



# student2.set_contacts(telegram: '@petrov2002')


# puts student1.to_s
# puts student2.get_info

# student3 = StudentShort.new(student2)
# puts student3.to_s

#puts Student.pars_str('{"first_name":"Илья","middle_name":"Александрович",
#	"surname":"Петров", "id": 2, "phone_number":"+79285698741",
#	"mail":"ilisha@mail.ru"}')


def read_from_txt(adress)
	if !File.exist?(adress)
		raise ArgumentError "This file '#{adress}' not found"
	else
		student_arr= Array.new
		file = File.new(adress, "r:UTF-8")
		lines = file.read.to_s.strip
		string_student=""
		lines.each_char do |ch|
			string_student+= ch
			if ch=='}'
				student_arr.append(Student.pars_str(string_student))
				string_student= ""
			end
		end
		file.close
	end
	student_arr

end


student_st= read_from_txt('test_read.txt')
puts student_st
student5 = StudentShort.new(student_st[0])
puts student5
