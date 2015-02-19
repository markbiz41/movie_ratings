module ApplicationHelper
  def full_format(date)
    date.strftime("%B %d, %Y")
  end
end
