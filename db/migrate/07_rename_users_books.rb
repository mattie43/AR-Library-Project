class RenameUsersBooks < ActiveRecord::Migration[6.0]
    def change
        rename_table :users_books, :user_books
    end
end