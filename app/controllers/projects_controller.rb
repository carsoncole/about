class ProjectsController < ApplicationController
  def index
    @title = 'Projects | ' + Setting.first.name
    @projects = Project.order(:order)
  end

  def show
    @project = Project.find(params[:id])
  end
end
