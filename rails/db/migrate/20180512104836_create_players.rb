class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      # t.belongs_to :position
      # t.belongs_to :country

      t.string :country_code, index: true

      t.string :email

      t.string :name
      t.date :join_date
      t.decimal :height, precision: 10, scale: 2
      t.decimal :weight, precision: 10, scale: 2
      t.date :date_of_birth
      t.string :college
      t.string :image
      t.boolean :is_retirment
      t.date :retirment_date

      t.timestamps
    end
  end
end