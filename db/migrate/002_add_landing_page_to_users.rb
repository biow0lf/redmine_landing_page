class AddLandingPageToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :landing_page, :string
  end

  def self.down
    remove_column :users, :landing_page
  end
end
