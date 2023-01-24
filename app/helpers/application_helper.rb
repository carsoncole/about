module ApplicationHelper
  def signed_in?
    @signed_in ||= ActionController::HttpAuthentication::Basic.has_basic_credentials?(request)
  end
end
