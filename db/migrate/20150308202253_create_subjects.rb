class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :wiki
      t.text :bio

      t.timestamps null: false
    end
  end
end
