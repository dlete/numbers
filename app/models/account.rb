class Account < ActiveRecord::Base
  belongs_to :account_type
  has_many :cash_receipts
end
