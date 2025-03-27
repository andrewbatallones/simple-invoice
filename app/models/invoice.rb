class Invoice < ApplicationRecord
  has_many :invoice_items

  belongs_to :client
end
