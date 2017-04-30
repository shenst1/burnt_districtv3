module ApplicationHelper
  def month_day_year(date)
    date.try(:strftime, "%B %d, %Y")
  end

  def year(date)
    date.try(:strftime, "%Y")
  end
end
