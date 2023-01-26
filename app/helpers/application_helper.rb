module ApplicationHelper
  def signed_in?
    @signed_in ||= ActionController::HttpAuthentication::Basic.has_basic_credentials?(request)
  end

  def date_range(start_date, end_date)
    date = start_date.strftime('%b %-m, %Y')
  end
end
