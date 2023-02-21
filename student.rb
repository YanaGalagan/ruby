

class Student


	attr_reader :id, :first_name, :middle_name,:surname, :phone_number, :mail , :git, :telegram

	#конструктор
	def initialize(first_name, middle_name, surname, options={}) 
		self.id = options[:id]
		self.first_name = first_name
		self.middle_name = middle_name
		self.surname = surname
		self.phone_number = options[:phone_number]
		self.mail = options[:mail]
		self.git = options[:git]
		self.telegram = options[:telegram]
	end

    #геттеры

    def id
    	@id
    end

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

	def git
		@git
	end

	def telegram
		@telegram
	end

	#сеттеры
	def id=(id_value)
		@id=id_value
	end


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

	def git=(git_value)
		@git=git_value
	end

	def telegram=(telegram_value)
		@telegram=telegram_value
	end
end