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
	@project = Project.new(permitted_params)
	if 
		@project.save
		redirect_to project_path(@project.id)
		flash[:notice] = "Der Datensatz wurde erfolgreich angelegt!"
	else
			render "new"
	end	
end

def update
@project.update(permitted_params)
flash[:notice] = "Der Datensatz wurde erfolgreich aktualisiert!"
redirect_to root_path
end


def destroy
	@project.destroy
	redirect_to root_path
end

private

	def permitted_params
		params.require(:project).permit(:title, :description, :start_date)
	end

	def set_project
		@project = Project.find(params[:id])
	end


end
