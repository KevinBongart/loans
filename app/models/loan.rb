class Loan < ActiveRecord::Base
  include LoansHelper

  belongs_to :bank

  def total_amount
    months = months_between(first_payment_at, last_payment_at)
    months * monthly_payment
  end

  def pay_in?(month)
    first_payment_at <= month && last_payment_at >= month
  end
end
