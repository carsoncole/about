class AddGithubUrlToSettings < ActiveRecord::Migration[7.1]
  def change
    add_column :settings, :github_url, :string
  end
end
