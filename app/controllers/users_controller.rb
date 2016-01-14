class UsersController < ApplicationController
	attr_accessor :name, :email, :password, :zipcode

	def show
		# @user = User.find(params[:id])
	end

	def new
		# @user = User.new
		@user = "placeholder"
	end

	def create
		# @user = User.new(user_params)
		# if @user.save
		# 	log_in @user
		# 	redirect_to @user
		# else
		# 	render 'new'
		# end
	end

private

	def user_params
		params.require(:user).permit(:name, :email, :password, :zipcode)
	end

end
