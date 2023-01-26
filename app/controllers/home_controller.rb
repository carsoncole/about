class HomeController < ApplicationController
  def index
    @projects = Project.all.order(:order)
    @experiences = Experience.all
  end
end
