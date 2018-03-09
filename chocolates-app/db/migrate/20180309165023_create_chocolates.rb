class CreateChocolates < ActiveRecord::Migration[5.1]
  def change
    create_table :chocolates do |t|
    	t.string :name 
    	t.string :flavor 
    	t.integer :price 

    	t.belongs_to :customer, index: true
      t.timestamps
    end
  end
end
