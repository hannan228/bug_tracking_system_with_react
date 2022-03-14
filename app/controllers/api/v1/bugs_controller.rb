class Api::V1::BugsController < ApplicationController
  protect_from_forgery with: :null_session
  def index
    bugs = Bug.all
    render json: bugs
  end

  def new
    bug=Bug.create(set_params) 
  	if bug.save
      render json: bug
    else
      render json: { error: bug.errors.messages }, status: 442
    end
  end

  def show
    if bug
      render json: bug
    else
      render json: {error: 'this record is not available'}
    end
  end

  def edit
    
  end

  def update
    # render json: bug

    if bug.update(set_params)
      render json: { message: 'Project is updated successfully.' }
    else
      render json: { error: bug.errors.messages }, status: 442 
    end
  end

  def destroy
    bug&.destroy
    render json: { message: 'Bug deleted!' }
  end

  private

  def set_params
    params.require(:bug).permit(:title, :description, :screenshot, :bug_type, :bug_status, :feature_status, :deadline, :image)
  end

  def bug
    @bug ||= Bug.find_by_id (params[:id])
  end
end
