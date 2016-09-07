class CreateCscmenus < ActiveRecord::Migration
  def change
    create_table :cscmenus do |t|
      t.string :mcode
      t.date  :dte
      t.string :sts
      
      t.timestamps null: false
    end
  end
end
