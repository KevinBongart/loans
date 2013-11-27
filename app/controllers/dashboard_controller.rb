class DashboardController < ApplicationController
  include LoansHelper

  def index
    @loans = Loan.includes(:bank)
    @first_payment_at = @loans.map(&:first_payment_at).min - 1.month
    @last_payment_at = @loans.map(&:last_payment_at).max + 1.month
    @months = months_between(@first_payment_at, @last_payment_at)
    @total_amount = @loans.sum(&:total_amount)
  end
end
