class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.belongs_to :to_do
      t.string :name
      t.string :description
      t.datetime :time_due
      t.string :date_created
      t.timestamps null: false
    end
  end
end
