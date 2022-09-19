class Book < ApplicationRecord
    validates :title, presence: true
    validates :author, presence: true
    validates :release, presence: true
    validates :price, presence: true
    
    has_many :users, through: :user_books
    has_many :user_books
end
