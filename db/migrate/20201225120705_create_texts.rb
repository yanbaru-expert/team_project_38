class CreateTexts < ActiveRecord::Migration[6.0]
  def change
    create_table :texts do |t|
      t.string :genre
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
