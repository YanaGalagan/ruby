
require_relative 'student'

student1 = Student.new('Иван', 'Иванович' , 'Иванов',id:1,phone_number:'+79384567891',
	mail:'ivan555@yandex.ru', git:'github.com/vanSuper', telegram:'Vanusha')

student2 = Student.new('Илья','Александрович','Петров', id:2, phone_number:'+79285698741',
	mail:'ilisha@mail.ru')

student3= Student.new('Александр', 'Сергеевич','Сидоров', id:3, phone_number:'+79886325417',
	git:'github.com/superproger',telegram:'Serezha')


puts student1.print_student
puts student2.print_student
puts student3.print_student