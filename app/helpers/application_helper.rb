module ApplicationHelper
  def nice_date(date)
    return nil if date.nil?
    date.strftime('%b %-d, %Y')
  end

  def compact_date(date)
    return nil if date.nil?
    date.strftime('%b %Y')
  end

  def compact_date_2(date)
    return nil if date.nil?
    date.strftime('%B %Y')
  end

  def date_range(start_date, end_date)
    (compact_date(start_date) || '' ) + ' - ' + (compact_date(end_date) || 'present')
  end
end
