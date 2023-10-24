class HomeController < ApplicationController
  def index
    @title = Setting.first.name
    @educations = Education.order(:start_date)
    redirect_to new_admin_setting_path if Setting.first.nil?
  end

  def about
    @title = 'About | ' + Setting.first.name
  end

  def source
    @title = 'Source | ' + Setting.first.name
  end

  def sitemap
  end
end
