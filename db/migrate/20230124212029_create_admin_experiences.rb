class CreateAdminExperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :admin_experiences do |t|
      t.string :title
      t.string :name
      t.string :url
      t.string :start_date
      t.string :end_date
      t.text :description
      t.integer :order

      t.timestamps
    end
  end
end
