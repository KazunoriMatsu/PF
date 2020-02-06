class Question < ApplicationRecord
	belongs_to :customer
	belongs_to :pqa, optional: true
	belongs_to :categorie
	has_many :answers


	validates :title, presence: true, length: {maximum: 50}
	validates :body, presence: true, length: {maximum: 200}
end

