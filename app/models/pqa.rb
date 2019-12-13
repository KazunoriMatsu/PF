class Pqa < ApplicationRecord

	has_many :questions
	has_many :posts

	attachment :image

end
