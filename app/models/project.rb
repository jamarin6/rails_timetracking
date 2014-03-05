class Project < ActiveRecord::Base
	has_many :entries                  #name es un simbolo y presence un hash
	validates :name, presence: true, uniqueness: true
	validates :name, length: {maximum: 30}
	validates :name, format: {with: /[a-zA-Z0-9]/}	
	def self.iron_find(id)
		where(id: id).first
	end

	def self.last_created_projects(n)
		limit(n).order(created_at: :desc)
	end

	def calculate_amount_hours(month, year)
		p = entries.where('updated_at > ? and updated_at < ?', Date.new(year, month, 1), Date.new(year, month, -1))
		#from = Date.new (year, month, 1)
		#to = from.end_of_month

		#filtered_entries = entries.where(date: from..to)



		count = 0
		count_min = 0
		count_hr_by_min = 0
		total = 0
		p.each do |i|
			count += i.hours
			count_min += i.minutes
			count_hr_by_min = count_min / 60.0
			total = count + count_hr_by_min
		end
		return total.round(2) #esto hace q redonde a 2 decimales	
	end
end



#all.each do |element|
		#	if element.id == id
		#		return element
		#	else
		#		puts "else"
		#	end