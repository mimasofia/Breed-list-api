class AddUserToBreedLists < ActiveRecord::Migration[5.1]
  def change
    add_reference :breed_lists, :user, foreign_key: true
  end
end
