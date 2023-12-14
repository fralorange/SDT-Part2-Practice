class RemoveUserIdFromTickets < ActiveRecord::Migration[7.1]
  def change
    remove_column :tickets, :user_id, :integer
  end
end
