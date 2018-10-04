class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string :title
      t.text :content
      t.string :permalink

      t.timestamps
    end
  end
end
