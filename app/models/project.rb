class Project < ActiveRecord::Base
	belongs_to :user

	def my_date=(val)
		val = Date.strptime(val, "%m%d%Y") if val.prestent?
	end
end
