class AddProjectsSubheadingToSettings < ActiveRecord::Migration[7.1]
  def change
    add_column :settings, :projects_subheading, :string
    add_column :settings, :experiences_subheading, :string
    add_column :settings, :source_subheading, :string
    add_column :settings, :about_subheading, :string
  end
end
