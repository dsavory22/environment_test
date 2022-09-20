Book.create!([
  {title: "harry Potter", author: "someone", release: "2022-09-19 00:00:00", price: "12.03"},
  {title: "next book", author: "other person", release: "2022-09-19 00:00:00", price: "43.0"},
  {title: "next next book", author: "other other person", release: "2022-09-19 00:00:00", price: "44.0"}
])
User.create!([
  {username: "some person"},
  {username: "another person"}
])
UserBook.create!([
  {user_id: 2, book_id: 2}
])
