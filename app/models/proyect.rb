class Proyect < ActiveRecord::Base
	def self.iron_find(id)
		where(id: id).first
	end
end



#all.each do |element|
		#	if element.id == id
		#		return element
		#	else
		#		puts "else"
		#	end