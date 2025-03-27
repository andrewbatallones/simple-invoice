class CreateClients < ActiveRecord::Migration[8.0]
  def change
    create_table :clients do |t|
      t.string :name, null: false
      t.string :company, null: false
      t.string :phone, null: false
      t.string :email, null: false
      t.string :slug, null: false

      t.timestamps
    end
    add_index :clients, :email, unique: true, name: "unique_client_emails"
    add_index :clients, :slug, unique: true, name: "unique_client_slugs"
  end
end
