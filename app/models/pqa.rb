class Pqa < ApplicationRecord

	has_many :questions, dependent: :destroy
	has_many :posts

	attachment :image

end
