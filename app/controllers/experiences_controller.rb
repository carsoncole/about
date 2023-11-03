class ExperiencesController < ApplicationController
  def index
    @title = 'Experience | ' + Setting.first.name
    @experiences = Experience.order(:order, start_date: :desc)
    @tags = Experience.tag_counts_on(:skills).order(taggings_count: :desc)
  end

  def show
    @project = Project.find(params[:id])
  end
end
