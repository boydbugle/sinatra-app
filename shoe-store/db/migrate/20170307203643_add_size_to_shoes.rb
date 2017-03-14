class AddSizeToShoes < ActiveRecord::Migration[5.0]
  def change
    add_column(:shoes, :size, :int)
  end
end
