class RemoveParagraphFromContent < ActiveRecord::Migration[5.2]
  def change
    remove_column :contents, :paragraph, :string
  end
end
