class CreateProspects < ActiveRecord::Migration[7.0]
  def change
    create_table :prospects do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
