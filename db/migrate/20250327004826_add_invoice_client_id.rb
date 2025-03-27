class AddInvoiceClientId < ActiveRecord::Migration[8.0]
  def change
    add_reference :invoices, :client, foreign_key: true, null: false
  end
end
