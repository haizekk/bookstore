class AddCoverFilenameToBooks < ActiveRecord::Migration
  def change
    add_column :books, :cover_filename, :string
  end
end
