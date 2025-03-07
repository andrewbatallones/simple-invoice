class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy

  normalizes :email_address, with: ->(e) { e.strip.downcase }

  validates_presence_of :email_address
  validates_uniqueness_of :email_address

  has_many :invoices
end
