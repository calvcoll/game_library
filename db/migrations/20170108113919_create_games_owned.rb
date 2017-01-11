Hanami::Model.migration do
  change do
    create_table :games_owneds do
      primary_key :id

      foreign_key :game_id, :games, on_delete: :cascade, null: false
      foreign_key :user_id, :users, on_delete: :cascade, null: false
    end
  end
end
