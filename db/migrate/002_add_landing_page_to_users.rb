class AddLandingPageToUsers < ActiveRecord::Migration
  def change
    add_column :users, :landing_page, :string
  end
end
