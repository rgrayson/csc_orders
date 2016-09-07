class AlterTableCscmenumodels < ActiveRecord::Migration
  def change
    change_table :Cscmenumodels do |t|
      t.change :dte, :datetime
      end
  end
end
