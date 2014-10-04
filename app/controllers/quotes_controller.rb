class QuotesController < ApplicationController
	def index
		@quote = Quote.order("Random()").last
	end

	def new
		@quote = Quote.new
	end

	def create
		@quote = Quote.create(quote_params)
		redirect_to quotes_path
	end

	private

	def quote_params
		params.require(:quote).permit(:saying, :author, :rating)
	end
end
