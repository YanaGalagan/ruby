

class Student


	attr_reader :id, :first_name, :middle_name,:surname, :phone_number, :mail , :git, :telegram

	def self.is_phone?(phone_number)
    	raise ArgumentError, "arg '#{phone_number}' is not string" unless phone_number.class == String or phone_number.nil?
    	return true if phone_number=~/^(\+7|8)\s?(\(\d{3}\)|\d{3})[\s\-]?\d{3}[\s\-]?\d{2}[\s\-]?\d{2}/ or phone_number.nil?
    	false
  	end

  	def self.is_name?(name)
  		raise ArgumentError, "arg '#{name}' is not string" unless name.class == String 
    	return true if name=~/^[А-Яа-я]+$/
  	end

  	def self.is_mail?(mail)
  		raise ArgumentError, "arg '#{mail}' is not string" unless mail.class == String or mail.nil?
  		return true if mail=~/^[^@\s]+@[^@\s]+\.\w+$/ or mail.nil?
  	end	

  	def self.is_git?(git)
    	raise ArgumentError, "arg '#{git}' is not string" unless git.class == String or git.nil?
    	return true if git=~/^github\.com\/[a-zA-Z0-9\-_]+$/ or git.nil?
    	false
  	end

  	def self.is_telegram?(telegram)
  		raise ArgumentError, "arg '#{telegram}' is not string" unless telegram.class == String or telegram.nil?
    	return true if telegram=~/^@[^@]+$/ or telegram.nil?
    false
  	end

  	#валидатор
  	def validate?
  		exist_git? and exist_contact?
  	end

  	def exist_git?
  		!self.git.nil?
  	end

  	def exist_contact?
  		!(self.phone_number.nil? and self.telegram.nil? and self.mail.nil?)
  	end
	#конструктор
	def initialize(first_name, middle_name, surname, id:nil,phone_number:nil, git:nil,telegram:nil, mail:nil) 
		self.first_name = first_name
		self.middle_name = middle_name
		self.surname = surname
		self.id = id
		self.phone_number = phone_number
		self.mail = mail
		self.git = git
		self.telegram = telegram
	end

    def set_contacts(contacts)
    	self.phone_number = contacts[:phone_number] unless contacts[:phone_number].nil?
    	self.mail = contacts[:mail] unless contacts[:mail].nil?
    	self.telegram = contacts[:telegram] unless contacts[:telegram].nil?
    end

	#сеттеры
	def id=(id_value)
		raise ArgumentError, "arg '#{other}' is not valid for id (must be int)" unless id_value.class == Integer or id_value.nil?  
		@id=id_value
	end


	def first_name=(first_name_value)
		raise ArgumentError, "Incorrect value: first_name=#{first_name}!" unless Student.is_name?(first_name_value) 
		@first_name=first_name_value
	end

	def middle_name=(middle_name_value)
		raise ArgumentError, "Incorrect value: middle_name=#{middle_name}!" unless Student.is_name?(middle_name_value)
		@middle_name=middle_name_value
	end

	def surname=(surname_value)
		raise ArgumentError, "Incorrect value: surname=#{surname}!" unless Student.is_name?(surname_value)
		@surname=surname_value
	end

	def phone_number=(phone_number_value)
		raise ArgumentError, "Incorrect value: phone_number=#{phone_number_value}!" unless Student.is_phone?(phone_number_value) 
		@phone_number=phone_number_value
	end

	def mail=(mail_value)
		raise ArgumentError, "Incorrect value: mail=#{mail}!" unless Student.is_mail?(mail_value)
		@mail=mail_value
	end

	def git=(git_value)
		raise ArgumentError, "Incorrect value: git=#{git}!" unless Student.is_git?(git_value)
		@git=git_value
	end

	def telegram=(telegram_value)
		raise ArgumentError, "Incorrect value: telegram=#{telegram}!" unless Student.is_telegram?(telegram_value)
		@telegram=telegram_value
	end


	
	
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