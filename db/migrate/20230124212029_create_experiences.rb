class CreateExperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :experiences do |t|
      t.string :title
      t.string :name
      t.string :url
      t.date :start_date
      t.date :end_date
      t.text :description
      t.integer :order, default: 0, nil: false

      t.timestamps
    end
  end
end
