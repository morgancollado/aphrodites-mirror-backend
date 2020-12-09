class CreateMakeups < ActiveRecord::Migration[6.0]
  def change
    create_table :makeups do |t|
      t.string :product_name
      t.string :product_type
      t.string :skin_type
      t.string :skin_tone
      t.string :brand
      t.string :shade

      t.timestamps
    end
  end
end
