class ProjectsController < ApplicationController
	def index
		@projects = Project.last_created_projects(10)
		if @projects.empty?
			render 'empty_projects'
		else
			render 'index'
		end
		#   @projects = Project.limit(10).order(created_at: :desc)
		#es igual que --> @projects = Project.limit(10).order('created_at DESC')
	end  #tienen q tener arroba para poder utilizarlas en el template

	def show
		if @project = Project.find_by(id: params[:id])
			render 'show'
		else
			render 'no_projects_found'
		end
	end
end