class Address < ApplicationRecord
  has_many :addresses_clients
  has_many :clients, through: :addresses_clients
end
