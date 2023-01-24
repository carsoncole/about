class HomeController < ApplicationController
  def index
    redirect_to new_setting_path if Setting.first.nil?
    @projects = Project.all.order(:order)
  end
end
