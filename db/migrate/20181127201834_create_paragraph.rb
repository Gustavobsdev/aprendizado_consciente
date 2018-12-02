class CreateParagraph < ActiveRecord::Migration[5.2]
  def change
    create_table :paragraphs do |t|
      t.integer :order
      t.string :text
      t.string :type
      t.references :content, foreign_key: true
    end
  end
end
