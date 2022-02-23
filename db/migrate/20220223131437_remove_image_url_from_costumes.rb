class RemoveImageUrlFromCostumes < ActiveRecord::Migration[6.1]
  def change
    remove_column :costumes, :image_url, :string
  end
end
