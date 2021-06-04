class CreateHorses < ActiveRecord::Migration[6.1]
  def change
    create_table :horses do |t|
      
      t.text :name
   
      t.integer :power
      t.integer :odds
      t.integer :year
      t.integer :last_race
      


      
    end
  end
end
