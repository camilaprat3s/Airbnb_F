class CreatePgSearchDocuments < ActiveRecord::Migration[7.1]

  def change
    create_table :pg_search_documents do |t|
      t.string :searchable_type
      t.timestamps
    end
  end
end
