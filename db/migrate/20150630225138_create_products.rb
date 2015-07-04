class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_type_name
      t.string :product_class_name
      t.string :product_sub_class_name
      t.string :product_minor_class_name
      t.string :product_country_origin_name
      t.integer :product_sku_no
      t.string :product_long_name
      t.string :product_base_upc_no
      t.integer :product_litres_per_container
      t.integer :prd_container_per_sell_unit
      t.float :product_alcohol_percent
      t.float :current_display_price
      t.integer :sweetness_code

      t.timestamps null: false
    end
  end
end
