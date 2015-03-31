class CreateToDos < ActiveRecord::Migration
  def change
    create_table :to_dos do |t|
      t.belongs_to :user
      t.string :name
      t.string :description
      t.datetime :time_due
      t.string :date_created
      t.timestamps null: false
    end
  end
end
