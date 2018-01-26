class CreateBreedLists < ActiveRecord::Migration[5.1]
  def change
    create_table :breed_lists do |t|
      t.string :breed
      t.string :gender
      t.numeric :weight
      t.numeric :height

      t.timestamps
    end
  end
end
