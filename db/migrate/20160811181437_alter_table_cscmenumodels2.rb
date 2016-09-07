class AlterTableCscmenumodels2 < ActiveRecord::Migration
  def change
    change_table :Cscmenumodels do |t|
      t.change :dte, :date
      end
  end
end
