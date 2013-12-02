class DashboardController < ApplicationController
  include LoansHelper

  def index
    @loans = Loan.includes(:bank)
    @total_amount = @loans.sum(&:total_amount)

    generate_month_list
    generate_chart_data
  end

  private

  def generate_month_list
    first_payment_at = @loans.map(&:first_payment_at).min - 1.month
    last_payment_at = @loans.map(&:last_payment_at).max + 1.month
    @months = months_between(first_payment_at, last_payment_at).times.map do |nth_month|
      first_payment_at + nth_month.months
    end
  end

  def generate_chart_data
    @month_names = @months.map { |month| month.strftime("%B %Y") }
    @monthly_payments = @months.map { |month| total_for_month(@loans, month).to_f }
  end
end
