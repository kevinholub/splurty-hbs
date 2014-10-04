class QuotesController < ApplicationController
	def index
		@quote = Quote.order("Random()").last
	end
end
