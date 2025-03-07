class CreateInvoices < ActiveRecord::Migration[8.0]
  def change
    create_table :invoices do |t|
      t.integer :number, index: { unique: true, name: "unique_invoices" }
      t.belongs_to :user
      t.date :send_date

      t.timestamps
    end
  end
end
