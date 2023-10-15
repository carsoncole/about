class AddSummaryToSettings < ActiveRecord::Migration[7.1]
  def change
    add_column :settings, :summary, :text
  end
end
