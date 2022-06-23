class AddHouseIdToResidents < ActiveRecord::Migration[5.2]
  def change
    add_column :residents, :house_id, :integer, null: false
  end
end
