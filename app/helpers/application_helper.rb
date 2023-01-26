module ApplicationHelper
  def signed_in?
    @signed_in ||= ActionController::HttpAuthentication::Basic.has_basic_credentials?(request)
  end

  def date_range(start_date, end_date)
    date = start_date.strftime('%b %-m, %Y')
  end

  def nice_date(date)
    return nil if nil
    date.strftime('%b %-m, %Y')
  end

  def date_range(start_date, end_date)
    nice_date(start_date) + ' - ' + nice_date(end_date) || 'present'
  end
end
