class HomeController < ApplicationController
  def index
    @projects = Project.all.order(:order)
    @experiences = Experience.order(:order, start_date: :desc)
  end
end
