Hanami::Model.migration do
  change do
    alter_table :ratings do
      add_constraint(:upper_limit_ratings){rating <= 5}
    end
  end
end
