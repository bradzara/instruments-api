class ChangeColumnNameFromTypeToClass < ActiveRecord::Migration[7.1]
  def change
    rename_column :instruments, :type, :class
  end
end
