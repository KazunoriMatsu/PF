class Question < ApplicationRecord
	belongs_to :customer
	belongs_to :pqa
	belongs_to :categorie


	validates :title, presence: true, length: {maximum: 50}
	validates :body, presence: true, length: {maximum: 200}
end

