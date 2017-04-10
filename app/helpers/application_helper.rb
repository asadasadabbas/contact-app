module ApplicationHelper
	def age(dob)
	  dob = dob.to_date
	  today = Date.today
	  age = today.year - dob.year
	  age -= 1 if dob.strftime("%m%d").to_i > today.strftime("%m%d").to_i
	  age
	end
end
