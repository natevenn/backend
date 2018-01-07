class CreatePrintSizes < ActiveRecord::Migration[5.1]
  def change
    create_table :print_sizes do |t|
      t.references :print, foreign_key: true
      t.references :size, foreign_key: true
      t.decimal :price

      t.timestamps
    end
  end
end
