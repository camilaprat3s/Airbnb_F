class AddContentToPgSearchDocument < ActiveRecord::Migration[7.1]
  def change
    add_column :pg_search_documents, :content, :text
  end
end
