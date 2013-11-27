class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.string :name
      t.decimal :monthly_payment
      t.date :first_payment_at
      t.date :last_payment_at
      t.references :bank, index: true

      t.timestamps
    end
  end
end
