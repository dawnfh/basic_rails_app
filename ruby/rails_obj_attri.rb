class Season
	attr_accessor :type, :price

	def initialize
		@type = "cold"
		@temp = "50 degrees"
		puts "this is winter"

	end
end



class Winter < Season
	attr_accessor :type, :temp


	def initialize
		@type = "freezing"
		@temp = "30 degrees"
		super
		puts "this is cold"
	end
end
# give example, create instance of objet
december = Winter.new
# december.type = "freezing"
puts december.type



