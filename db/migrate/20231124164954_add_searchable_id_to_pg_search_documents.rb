class AddSearchableIdToPgSearchDocuments < ActiveRecord::Migration[7.1]
  def change
    add_column :pg_search_documents, :searchable_id, :integer
  end
end
