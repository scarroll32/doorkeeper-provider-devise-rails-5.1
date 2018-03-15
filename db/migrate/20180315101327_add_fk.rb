class AddFk < ActiveRecord::Migration[5.1]
  def change
	  add_foreign_key :table_name, :users, column: :resource_owner_id

  end
end
