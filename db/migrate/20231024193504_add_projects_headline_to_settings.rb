class AddProjectsHeadlineToSettings < ActiveRecord::Migration[7.1]
  def change
    add_column :settings, :projects_headline, :string
    add_column :settings, :experiences_headline, :string
    add_column :settings, :about_headline, :string
    add_column :settings, :source_headline, :string
  end
end
