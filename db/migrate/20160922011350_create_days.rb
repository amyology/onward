class CreateDays < ActiveRecord::Migration[5.0]
  def change
    create_table :days do |t|
      t.integer :daynumber
      t.string :location
      t.integer :journey_id
      t.boolean :public

      t.timestamps
    end
  end
end
