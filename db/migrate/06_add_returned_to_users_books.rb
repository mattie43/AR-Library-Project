class AddReturnedToUsersBooks < ActiveRecord::Migration[6.0]
    def change
        add_column :users_books, :returned, :boolean
    end
end