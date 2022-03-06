class AddEmailToProspect < ActiveRecord::Migration[7.0]
  def change
    add_column :prospects, :email, :string
  end
end
