class ChocolatesController < ApplicationController
	def index
		@chocolates = Chocolate.all
	end

	def show
		@chocolate = Chocolate.find(params[:id])
		# @customer = Chocolate.find_by(customer_id)
	end

	def new
		@chocolate = Chocolate.new
	end

	def create
		@chocolate = Chocolate.new(chocolate_params)

		if @chocolate.save
			redirect_to chocolates_path
		else
			render :action => :new
		end
	end

	def edit
		@chocolate = Chocolate.find(params[:id])
	end

	def update
		@chocolate = Chocolate.find(params[:id])
		@chocolate.update!(chocolate_params)
		redirect_to @chocolate
	end

	def destroy
		@chocolate = Chocolate.find(params[:id])
		@chocolate.destroy!
		redirect_to chocolates_path
		# render plain: "chocolate Deleted"
	end

	private 

	def chocolate_params
		params.require(:chocolate).permit(:name, :flavor, :price, :customer_id)
	end
end
