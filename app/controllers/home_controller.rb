class HomeController < ApplicationController
  def index
    @projects = Project.order(:order)
    @experiences = Experience.order(:order, start_date: :desc)
    @tags = Experience.tag_counts_on(:skills).order(taggings_count: :desc)
    @educations = Education.order(:start_date)

    redirect_to new_admin_setting_path if Setting.first.nil?
  end
end
