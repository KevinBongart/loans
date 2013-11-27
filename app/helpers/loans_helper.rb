module LoansHelper
  def months_between(date1, date2)
    (date2.year * 12 + date2.month) - (date1.year * 12 + date1.month) + 1
  end

  def loans_for_month(loans, month)
    loans.select { |loan| loan.pay_in?(month) }
  end

  def total_for_month(loans, month)
    loans_for_month(@loans, month).sum(&:monthly_payment)
  end
end
