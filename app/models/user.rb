class User < ActiveRecord::Base
    has_many :user_books
    has_many :books, through: :user_books

    def check_out_book(book, due_date)
        UserBook.create(user:self,book:book,returned:false)
    end

end