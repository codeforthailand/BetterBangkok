class AddLongToIssue < ActiveRecord::Migration
  def change
    add_column :issues, :long, :string
  end
end
