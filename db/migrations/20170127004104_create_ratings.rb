Hanami::Model.migration do
  change do
    create_table :ratings do
      primary_key :id
      column :rating, Integer, null: false
      foreign_key :user_id, :users, on_delete: :cascade, null: false
      foreign_key :game_id, :games, on_delete: :cascade, null: false

      check {rating > 0}
    end
  end
end
