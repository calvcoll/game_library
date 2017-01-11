Hanami::Model.migration do
  change do
    alter_table :users do
      set_column_not_null :username
      set_column_not_null :password
      add_unique_constraint :username
    end
  end
end
