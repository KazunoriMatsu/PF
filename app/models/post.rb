class Post < ApplicationRecord
		belongs_to :customer, optional: true
		belongs_to :categorie


		attachment :image
    # acts_as_paranoid
end
