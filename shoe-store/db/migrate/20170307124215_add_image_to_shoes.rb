class AddImageToShoes < ActiveRecord::Migration[5.0]
  def change
    add_column(:shoes, :image, :string)
  end
end
