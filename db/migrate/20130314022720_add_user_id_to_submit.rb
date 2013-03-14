class AddUserIdToSubmit < ActiveRecord::Migration
  def change
    add_column :submits, :user_id, :integer
  end
end
