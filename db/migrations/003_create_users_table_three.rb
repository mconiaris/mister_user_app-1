Sequel.migration do
  up do
    create_table(:users) do
      primary_key :id
      String  :email
      String  :title_name
      String  :first_name
      String  :last_name
      String  :gender
      String  :picture
      Integer :dob
      String  :phone
      String  :street
      String  :city
      String  :state
      String  :zip
      String  :password
    end
  end

  down do
    drop_table(:users)
  end
end
