Author.destroy_all
Book.destroy_all
Category.destroy_all
User.destroy_all
UserBook.destroy_all

author1 = Author.create(name: "Author1")
author2 = Author.create(name: "Author2")

book1 = Book.create(title: "Book1")
book2 = Book.create(title: "Book2")

category1 = Category.create(name: "Cat1")
category2 = Category.create(name: "Cat2")

user1 = User.create(name: "User1")
user2 = User.create(name: "User2")

ub1 = UserBook.create
ub2 = UserBook.create

author1.books << book1
author2.books << book2

category1.books << book1
category2.books << book2

user1.user_books << ub1
user2.user_books << ub2

book1.user_books << ub1
book2.user_books << ub2

# book1.category = category1
# book1.author = author1
# book2.category = category2
# book2.author = author2

# ub1 = user1
# ub1 = author1
# ub2 = user2
# ub2 = author2