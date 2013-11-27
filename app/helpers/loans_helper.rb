module LoansHelper
  def months_between(date1, date2)
    (date2.year * 12 + date2.month) - (date1.year * 12 + date1.month) + 1
  end
end
