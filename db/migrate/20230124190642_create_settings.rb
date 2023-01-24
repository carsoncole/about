class CreateSettings < ActiveRecord::Migration[7.0]
  def change
    create_table :settings do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :phone
      t.text :description
      t.string :status
      t.string :meta_description
      t.string :meta_title
      t.string  :host_url
      t.timestamps
    end
  end
end
