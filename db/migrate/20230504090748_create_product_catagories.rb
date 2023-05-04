class CreateProductCatagories < ActiveRecord::Migration[7.0]
  def change
    create_table :product_catagories do |t|
      t.string :catagory_name

      t.timestamps
    end
  end
end
