class CreateUsersBooks < ActiveRecord::Migration[6.0]
    def change
        create_table :users_books do |t|
            t.integer :user_id
            t.integer :book_id
        end
    end
end