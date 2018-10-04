class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :name
      t.references :house, foreign_key: true

      t.timestamps
    end
  end
end
