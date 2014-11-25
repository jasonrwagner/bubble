class Project < ActiveRecord::Base
	belongs_to :user

	def my_date=(val)
		Date.strptime(val, "%d%m%y") if val.prestent?
	end

end
