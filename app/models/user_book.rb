class UserBook < ActiveRecord::Base
    belongs_to :user
    belongs_to :book

    def self.where(user:)
        {user: user.user_books.first.user,
         book: user.user_books.first.book,
         returned: user.user_books.first.returned}
    end

end