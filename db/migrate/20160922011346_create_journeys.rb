class CreateJourneys < ActiveRecord::Migration[5.0]
  def change
    create_table :journeys do |t|
      t.string :place
      t.datetime :startdate
      t.datetime :enddate
      t.integer :user_id
      t.boolean :public

      t.timestamps
    end
  end
end
