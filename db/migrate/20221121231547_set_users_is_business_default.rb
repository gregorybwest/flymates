class SetUsersIsBusinessDefault < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :is_business, :boolean, default: false
  end
end
