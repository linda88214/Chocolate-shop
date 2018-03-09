class CustomersController < ApplicationController
	def index
		@customers = Customer.all
	end

	def show
		@customer = Customer.find(params[:id])
	end

	def new
		@customer = Customer.new
	end

	def create
		@customer = Customer.new(customer_params)
		if @customer.save
			redirect_to customers_path
		else
			render :action => :new
		end
	end

	def edit
		@customer = Customer.find(params[:id])
	end

	def update
		@customer = Customer.find(params[:id])
		@customer.update!(customer_params)
		redirect_to customers_path
	end

	def destroy
		@customer = Customer.find(params[:id])
		@customer.destroy
		redirect_to customers_path
	end

	def cookies_by_customer
		@customer = Customer.find(params[:id])
	end

	def customer_params
		params.require(:customer).permit(:name, :age, :gender)
	end
end
