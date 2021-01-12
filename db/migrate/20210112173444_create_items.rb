class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.belongs_to :categorie
      t.string :nom
      t.text :desc
      t.integer :prix
  
      t.timestamps
    end
  end
end
