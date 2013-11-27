class Bank < ActiveRecord::Base
  has_many :loans
end
