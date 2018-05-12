class CreateDivisions < ActiveRecord::Migration[5.0]
  def change
    create_table :divisions do |t|
      t.belongs_to :conference

      t.string :name
      
      t.timestamps
    end
  end
end
