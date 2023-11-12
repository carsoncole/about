class ChangeColumnStatusesOnSettings < ActiveRecord::Migration[7.1]
  def up
    remove_column :settings, :status
    add_column :settings, :status, :integer
  end

  def down
    remove_column :settings, :status
    add_column :settings, :status, :string
  end
end
