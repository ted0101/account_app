class HomeController < ApplicationController
	def dashboard
		@data=Expense.dashboard
	end
	def index
		if user_signed_in?
		@expenses =current_user.expenses.last(5).reverse()
	end
	end
end
