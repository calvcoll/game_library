Hanami::Model.migration do
  change do
    create_table :comments do
      primary_key :id
      column :comment, String, null: false

      foreign_key :user_id, :users, on_delete: :cascade, null: false
      foreign_key :game_id, :games, on_delete: :cascade, null: false
    end
  end
end
