class AddColumnToUrls < ActiveRecord::Migration[5.1]
  def change
    add_column :urls, :click_count, :integer, default: 0
  end
end
