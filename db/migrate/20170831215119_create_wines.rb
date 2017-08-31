class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.string :name
      t.string :type
      t.string :country
      t.string :year

      t.timestamps null: false
    end
  end
end
