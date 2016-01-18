class GiveHelpController < ApplicationController

	attr_accessor :name, :category, :sub_category, :description, :hours, :additional_information

	def index
	end

	def new
		@give_help_project = "placeholder"
	end

	def show
	end

	def edit
		@give_help_project = "placeholder"
	end

	def archive
	end

private

	def give_help_project_params
		params.require(:give_help_project).permit(:name, :category, :sub_category, :description, :hours, :additional_information)
	end
	
end
