class Editmrktcstore < ActiveRecord::Migration
  def change
    change_table :Mrktcstores do |t|
      t.change :store, :integer
      t.change :storedesc, :string
    end
  end
end
