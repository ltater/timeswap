class UsersController < ApplicationController

	# Only logged in users can edit or update user profiles
	before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
	before_action :correct_user, only: [:edit, :update]
	attr_accessor :name, :email, :password, :zipcode

	def index
		# @users = User.all
	end

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

	def edit
		# @user = User.find(params[:id])
		@user = "placeholder"
	end

	def edit_2
	end

	def edit_3
	end

	def update
		# @user = User.find(params[:id])
		# if @user.update_attributes(user_params)
		# 	flash[:success] = "Profile Updated"
		# 	redirect_to @user
		# else
		# 	render 'edit'
		# end
	end

	def my_projects
	end

	def edit_my_profile
		@user = 'placeholder'
	end

	def delete_my_profile
	end

	def destroy
		# User.find(params[:id]).destroy
		# flash[:success] = "User deleted"
		# redirect_to users_url
	end

private

	def user_params
		params.require(:user).permit(:name, :email, :password, :zipcode)
	end

	# Before filters

	# Confirms a logged-in user
	def logged_in_user
		# unless logged_in?
		# 	store_location
		# 	flash[:danger] = "Please Log In"
		# 	redirect_to login_url
		# end
	end

	# Confirms the correct user
	def correct_user
		# @user = User.find(params[:id])
		# redirect_to(root_url) unless @user == current_user?(@user)
	end

end
