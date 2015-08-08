class CreateProductAndCategory < ActiveRecord::Migration
  def change
    create_table :products_categories, id: false do |t|
      t.integer :product_id, index: true
      t.integer :category_id, index: true
    end
  end
end
