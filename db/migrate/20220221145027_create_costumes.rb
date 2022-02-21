class CreateCostumes < ActiveRecord::Migration[6.1]
  def change
    create_table :costumes do |t|
      t.string :name
      t.string :category
      t.integer :size
      t.integer :price_per_day
      t.boolean :available?
      t.string :image_url

      t.timestamps
    end
  end
end
