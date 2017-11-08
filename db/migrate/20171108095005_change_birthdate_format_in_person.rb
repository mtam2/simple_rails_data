class ChangeBirthdateFormatInPerson < ActiveRecord::Migration[5.1]
  def change
      change_column :people, :birthdate, :string
  end
end
