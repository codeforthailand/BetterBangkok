class AddLatToIssue < ActiveRecord::Migration
  def change
    add_column :issues, :lat, :string
  end
end
