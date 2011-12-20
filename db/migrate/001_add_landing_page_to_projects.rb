class AddLandingPageToProjects < ActiveRecord::Migration
  def self.up
    add_column :projects, :landing_page, :string
  end

  def self.down
    remove_column :projects, :landing_page
  end
end
