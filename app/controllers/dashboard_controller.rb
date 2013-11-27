class DashboardController < ApplicationController
  include LoansHelper

  def index
    @loans = Loan.includes(:bank)
    @first_payment_at = @loans.map(&:first_payment_at).min
    @last_payment_at = @loans.map(&:last_payment_at).max
    @months = months_between(@first_payment_at, @last_payment_at)
  end
end
