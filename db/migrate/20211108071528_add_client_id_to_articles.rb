class AddClientIdToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :client_id, :int
  end
end
