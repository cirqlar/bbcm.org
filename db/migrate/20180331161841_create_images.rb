class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :image
      t.string :event
      t.string :people
      t.boolean :image_processing, default: false, null: false

      t.timestamps
    end
  end
end
