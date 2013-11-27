module ApplicationHelper
  def number_to_euros(number)
    number_to_currency(number, locale: :fr)
  end
end
