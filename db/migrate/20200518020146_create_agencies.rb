class CreateAgencies < ActiveRecord::Migration[5.2]
  def change
    create_table :agencies do |t|
      t.string :name
      t.integer :billing_terms
      t.integer :credit_rating

      t.timestamps
    end
  end
end
