class HomeController < ApplicationController
	def dashboard
		@data=Expense.dashboard
	end
	def index
		@events = current_user.expenses.last(5).reverse()
	end
end
