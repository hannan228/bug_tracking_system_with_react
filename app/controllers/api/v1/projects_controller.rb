class Api::V1::ProjectsController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    projects = Project.all
    render json: projects
  end

  def new
    project = Project.create(set_params)
    if project.save
      render json: project
    else
      render json: { error: project.errors.messages }, status: 442
    end
  end

  def show
    if project
      render json: project
    else
      render json: { error: 'This record is not available' }
    end
  end

  def edit
  end

  def update
    # render json: bug

    if project.update(set_params)
      render json: { message: 'Project is updated successfully.' }
    else
      render json: { error: project.errors.messages }, status: 442 
    end
  end

  
  def destroy
    project&.destroy
    render json: { message: 'Project deleted!' }
  end

  private

  def set_params
    params.require(:project).permit(:title, :description)
  end

  def project
    project = Project.find_by_id params[:id]
  end

end
