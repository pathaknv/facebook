module UsersHelper
  def readable_date(date)
    date.strftime('%a, %d %b %Y')
  end
end
