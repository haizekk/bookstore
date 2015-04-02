class RenameCoverFilename < ActiveRecord::Migration
  def change
    rename_column :books, :cover_filename, :cover
  end
end
