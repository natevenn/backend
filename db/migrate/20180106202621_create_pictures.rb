class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.string :title
      t.integer :position
      t.boolean :is_print
      t.string :description
      t.references :category, foreign_key: true
      t.string :image

      t.timestamps
    end
  end
end
