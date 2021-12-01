class AddNoteToWork < ActiveRecord::Migration[6.1]
  def change
    add_column :works, :note, :string
  end
end
