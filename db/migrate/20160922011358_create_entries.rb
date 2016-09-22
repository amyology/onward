class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.text :text
      t.integer :day_id
      t.boolean :public

      t.timestamps
    end
  end
end
