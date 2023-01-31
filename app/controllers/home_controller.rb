class HomeController < ApplicationController
  def index
    @projects = Project.all.order(:order)
    @experiences = Experience.order(:order, start_date: :desc)
    @tags = Experience.tag_counts_on(:skills).order(taggings_count: :desc)
  end
end
