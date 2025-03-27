class Client < ApplicationRecord
  has_many :addresses_clients
  has_many :addresses, through: :addresses_clients
end
