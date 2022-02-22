class AddUserReferencesToCostumes < ActiveRecord::Migration[6.1]
  def change
    add_reference :costumes, :user, null: false, foreign_key: true
  end
end
