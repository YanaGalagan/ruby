

class Student

	#конструктор
	def initialize(first_name, middle_name, surname, phone_number, mail) 
		self.first_name = first_name
		self.middle_name = middle_name
		self.surname = surname
		self.phone_number = phone_number
		self.mail = mail
	end

    #геттеры
	def first_name
		@first_name
	end

	def middle_name
		@middle_name
	end

	def surname
		@surname
	end

	def phone_number
		@phone_number
	end

	def mail
		@mail
	end


	#сеттеры
	def first_name=(first_name_value)
		@first_name=first_name_value
	end

	def middle_name=(middle_name_value)
		@middle_name=middle_name_value
	end

	def surname=(surname_value)
		@surname=surname_value
	end

	def phone_number=(phone_number_value)
		@phone_number=phone_number_value
	end

	def mail=(mail_value)
		@mail=mail_value
	end
end