class CreateSellers < ActiveRecord::Migration[5.0]
  def change
    create_table(:sellers) do |s|
      s.column(:name, :string)  
      s.column(:contacts, :int) 
      s.column(:location, :string) 

      s.timestamps()
    end
  end
end
