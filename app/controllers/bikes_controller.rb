class BikesController < ApplicationController

	def index
		@bikes = Bike.all
	end

	def new
		@bike=Bike.new
	end

	def create
		@bike=Bike.new(params[:bike])
		if @bike.save
			redirect_to bikes_url
		else flash[:notice] = "You messed up something..."
			render 'new'
		end
	end

	def destroy
		p = Bike.find_by_id(params[:id])
		p.destroy
		redirect_to bikes_url
	end

	def edit
		@bike = Bike.find_by_id(params[:id])
	end	


	def update
		@bike = Bike.find_by_id(params[:id])
		@bike.url = params[:bike][:url]
		@bike.title = params[:bike][:title]
		if @bike.save
			redirect_to bikes_url
		else
			render 'edit'
		end
	end

	def show
		@bike = Bike.find_by_id(params[:id])
	end
end