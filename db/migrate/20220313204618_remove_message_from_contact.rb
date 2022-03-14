class RemoveMessageFromContact < ActiveRecord::Migration[6.0]
  def change
    remove_column :contacts, :message, :string
  end
end
