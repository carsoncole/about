class RenameDescriptionToHomeHeadline < ActiveRecord::Migration[7.1]
  def change
    rename_column :settings, :description, :home_headline
  end
end
