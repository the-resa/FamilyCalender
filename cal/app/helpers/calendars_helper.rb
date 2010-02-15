module CalendarsHelper
  def short(text)
    truncate(text, :length => 40, :omission => "(...)")
  end
end