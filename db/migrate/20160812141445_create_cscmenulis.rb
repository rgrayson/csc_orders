class CreateCscmenulis < ActiveRecord::Migration
  def change
    create_table :cscmenulis do |t|
      t.integer :ordsts, defualt:0
      t.datetime :dtesumbmitted
      t.string :mcode
      t.date :dte
      t.string :locncode
      t.string :fld
      t.string :flddesc
      t.integer :sub
      t.string :subdesc
      t.string :store
      t.integer :storedesc
      t.string :category
      t.string :item
      t.string :itemdesc
      t.string :uofm
      t.integer :equomqty
      t.integer :qtyord
      t.decimal :selprc, precision:6, scale:2
      t.integer :histord
      t.integer :histavgord
      t.integer :histavgwst
      t.integer :sugord
      
      
      t.timestamps null: false
    end
  end
end
