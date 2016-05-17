class AddPasswordDigestToClinicalUsers < ActiveRecord::Migration
  def change
    add_column :clinical_users, :password_digest, :string
  end
end
