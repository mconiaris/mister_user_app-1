Sequel.migration do
  up do
    create_table(:users) do
      primary_key :id
      String :email
      String :name
      String :gender
      String :picture
      Integer :dob
      String :phone
      String :location
      String :password
    end
  end

  down do
    drop_table(:users)
  end
end
