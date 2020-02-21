class Post < ApplicationRecord
		belongs_to :customer
		belongs_to :categorie
		belongs_to :pqa, optional: true

		has_many :favorites


		attachment :image
    # acts_as_paranoid
end
