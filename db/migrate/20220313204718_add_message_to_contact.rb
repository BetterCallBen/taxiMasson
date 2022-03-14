class AddMessageToContact < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :message, :text
  end
end
