class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :source_url
      t.string :description
      t.string :image_url
      t.string :working_url
      t.integer :order

      t.timestamps
    end
  end
end
