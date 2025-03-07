class CreateInvoiceItems < ActiveRecord::Migration[8.0]
  def change
    create_table :invoice_items do |t|
      t.string :description
      t.integer :quantity
      t.integer :unit_price
      t.belongs_to :invoice

      t.timestamps
    end
  end
end
