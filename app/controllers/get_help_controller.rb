class GetHelpController < ApplicationController

	attr_accessor :name, :category, :sub_category, :description, :hours, :additional_information

	def index
	end
	
	def new
		@get_help_project = "placeholder"
	end

	def show
	end

	def edit
		@get_help_project = "placeholder"
	end

	def archive
	end

private

	def get_help_project_params
		params.require(:get_help_project).permit(:name, :category, :sub_category, :description, :hours, :additional_information)
	end
	
end
