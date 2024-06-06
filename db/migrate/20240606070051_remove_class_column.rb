class RemoveClassColumn < ActiveRecord::Migration[7.1]
  def change
    remove_column :instruments, :class, :string
  end
end
