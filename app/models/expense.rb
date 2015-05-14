class Expense < ActiveRecord::Base
	belongs_to :user
	def self.dashboard(user)
		data=user.expenses.select("name,sum(cost) as total").group("name")
		data.map{|d|[d.name,d.total]}
	end
end
