class AddLandingPageToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :landing_page, :string
  end
end
