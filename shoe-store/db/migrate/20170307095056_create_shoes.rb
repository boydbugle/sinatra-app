class CreateShoes < ActiveRecord::Migration[5.0]
  def change
     create_table(:shoes) do |s|
      s.column(:description, :string)  
      s.column(:price, :int) 
      

      s.timestamps()
    end
  end
end
