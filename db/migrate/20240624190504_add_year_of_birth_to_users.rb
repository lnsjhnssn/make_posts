class AddYearOfBirthToUsers < ActiveRecord::Migration[6.1]
  def change
    def change
      add_column :users, :year_of_birth, :string
    end
  end
end
