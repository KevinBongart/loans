json.array!(@loans) do |loan|
  json.extract! loan, :name, :monthly_payment, :first_payment_at, :last_payment_at, :bank_id
  json.url loan_url(loan, format: :json)
end
