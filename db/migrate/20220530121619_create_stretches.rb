class CreateStretches < ActiveRecord::Migration[6.1]
  def change
    create_table :stretches do |t|
      t.string :name
      t.string :description
      t.references :routine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
