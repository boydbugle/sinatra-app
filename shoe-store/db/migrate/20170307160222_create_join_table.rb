class CreateJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_table(:sellers_shoes) do |t|
      t.column(:seller_id, :int)
      t.column(:shoe_id, :int)

      t.timestamp()
    end
  end
end
