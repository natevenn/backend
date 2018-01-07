class CreatePrints < ActiveRecord::Migration[5.1]
  def change
    create_table :prints do |t|
      t.string :title
      t.string :description
      t.references :picture, foreign_key: true

      t.timestamps
    end
  end
end
