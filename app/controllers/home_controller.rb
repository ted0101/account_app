class HomeController < ApplicationController
	def dashboard
		@data=Expense.dashboard
	end
	def index
		@expenses =Expense.all.last(5).reverse()
	end
end
