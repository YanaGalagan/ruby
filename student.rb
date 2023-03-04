

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

    
	#сеттеры
	def id=(id_value)
		raise ArgumentError, "Incorrect value: id=#{id}!" if !id.nil? 
		@id=id_value
	end


	def first_name=(first_name_value)
		raise ArgumentError, "Incorrect value: first_name=#{first_name}!" if !first_name.nil? 
		@first_name=first_name_value
	end

	def middle_name=(middle_name_value)
		raise ArgumentError, "Incorrect value: middle_name=#{middle_name}!" if !middle_name.nil? 
		@middle_name=middle_name_value
	end

	def surname=(surname_value)
		raise ArgumentError, "Incorrect value: surname=#{surname}!" if !surname.nil? 
		@surname=surname_value
	end

	def phone_number=(phone_number_value)
		raise ArgumentError, "Incorrect value: phone_number=#{phone_number}!" if !phone_number.nil? 
		@phone_number=phone_number_value
	end

	def mail=(mail_value)
		raise ArgumentError, "Incorrect value: mail=#{mail}!" if !mail.nil? 
		@mail=mail_value
	end

	def git=(git_value)
		raise ArgumentError, "Incorrect value: git=#{git}!" if !git.nil? 
		@git=git_value
	end

	def telegram=(telegram_value)
		raise ArgumentError, "Incorrect value: telegram=#{telegram}!" if !telegram.nil? 
		@telegram=telegram_value
	end


	#def self.is_number_phone?(phone_number)
	#	raise ArgumentError, "#{phone_number} is not number phone" phone_number.class == String or phone_number.nil?
	#	return true if phone_number=~/^/
	
	def to_s
    result = "#{first_name} #{middle_name} #{surname}"
    result += " id=#{id}" unless id.nil?
    result += " phone=#{phone_number}" unless phone_number.nil?
    result += " git=#{git}" unless git.nil?
    result += " telegram=#{telegram}" unless telegram.nil?
    result += " mail=#{mail}" unless mail.nil?
    result
  end


end