class AddIndexToClinicalUsersEmail < ActiveRecord::Migration
  def change
  	add_index :clinical_users, :email, unique: true
  end
end
