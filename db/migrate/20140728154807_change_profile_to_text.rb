class ChangeProfileToText < ActiveRecord::Migration
  def up
    change_column :cvs, :profile, :text
  end
  def down
      # This might cause trouble if you have strings longer
      # than 255 characters.
      change_column :cvs, :profile, :string
  end
end
