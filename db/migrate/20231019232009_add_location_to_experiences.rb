class AddLocationToExperiences < ActiveRecord::Migration[7.1]
  def change
    add_column :experiences, :location, :string
  end
end
