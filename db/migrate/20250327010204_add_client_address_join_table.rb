class AddClientAddressJoinTable < ActiveRecord::Migration[8.0]
  def change
    create_join_table :addresses, :clients, column_options: { null: false }
  end
end
