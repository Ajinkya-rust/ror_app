class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
    t.string :username
    t.string :email
    t.timestamps
    end
  end
end
