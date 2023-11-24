class AddSearchableTypeToPgSearchDocuments < ActiveRecord::Migration[7.1]
  def change
    add_column :pg_search_documents, :searchable_type, :string
  end
end
