class Admin::AdminController < ActionController::Base
  http_basic_authenticate_with name: Rails.application.credentials.http_auth.name, password: Rails.application.credentials.http_auth.password unless Rails.env == 'test'

  layout 'admin/application'
end
