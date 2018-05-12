class CreateCountries < ActiveRecord::Migration[5.0]
  def change
    create_table :countries, {id: false} do |t|
      t.string :code, primary_key: true
      t.string :name

      t.timestamps
    end
    add_foreign_key :players, :countries, column: :country_code, primary_key: :code
  end
end
