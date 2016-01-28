class ProjectsController < ApplicationController
before_action :set_project, only: [:edit, :show, :update, :destroy]

def index
	@projects = Project.all
end

def new
	@project = Project.new
end

def show
end

def edit
end


def create
	if 	@project = Project.create(permitted_params)
			redirect_to project_path(@project.id)
	else
			render "new"
	end	
end

def update
@project.update(permitted_params)
redirect_to root_path
end


def destroy
	@movie.destroy
	redirect_to movies_url
end

private

	def permitted_params
		params.require(:project).permit(:title, :description, :start_date)
	end

	def set_project
		@project = Project.find(params[:id])
	end



end
