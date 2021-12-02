class AddColumnTaskIdToWorks < ActiveRecord::Migration[6.1]
  def change
    add_column :works, :task_id, :integer
  end
end
