class Categorie < ApplicationRecord
  has_many :posts
  has_many :questions
end
