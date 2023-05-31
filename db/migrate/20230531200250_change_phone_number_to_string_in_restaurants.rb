# frozen_string_literal: true

# Change phone_number from int to str
class ChangePhoneNumberToStringInRestaurants < ActiveRecord::Migration[7.0]
  def change
    change_column :restaurants, :phone_number, :string
  end
end
