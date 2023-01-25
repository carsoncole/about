class Admin::AdminController < ActionController::Base

  http_basic_authenticate_with  name: Rails.application.credentials.http_auth.test.name, password: Rails.application.credentials.http_auth.test.password if Rails.env.test?
  http_basic_authenticate_with name: Rails.application.credentials.http_auth.development.name, password: Rails.application.credentials.http_auth.development.password if Rails.env.development? || Rails.env.production?
  layout 'admin/application'
end
