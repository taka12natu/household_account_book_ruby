class CreateHomes < ActiveRecord::Migration[5.2]
  def change
    create_table :homes do |t|
      t.string :ttt
      t.text :content
      t.datetime :start_time

      t.timestamps
    end
  end
end
