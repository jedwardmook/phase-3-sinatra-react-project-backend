class CreateDailyNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :daily_notes do |t|
      t.string :coffee_notes
      t.string :needs
      t.string :items_86ed
      t.boolean :pastry_soldout
      t.string :leftover_pastry
      t.string :miscellaneous
      t.timestamp :created_on
      t.integer :employee_id
    end
  end
end
