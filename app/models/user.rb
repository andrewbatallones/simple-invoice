class User < ApplicationRecord
  has_secure_password

  has_many :sessions, dependent: :destroy
  has_many :invoices

  validates_presence_of :email_address
  validates_uniqueness_of :email_address

  normalizes :email_address, with: ->(e) { e.strip.downcase }
end
