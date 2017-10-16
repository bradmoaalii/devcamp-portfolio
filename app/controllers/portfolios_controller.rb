class PortfoliosController < ApplicationController
	def index
			@Portfolio_items = Portfolio.all?
	end

	def new
	end	
end

