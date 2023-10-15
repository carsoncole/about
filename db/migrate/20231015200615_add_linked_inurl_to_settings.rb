class AddLinkedInurlToSettings < ActiveRecord::Migration[7.1]
  def change
    add_column :settings, :linkedin_url, :string
    add_column :settings, :portfolio_url, :string
  end
end
