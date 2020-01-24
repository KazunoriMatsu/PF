class Post < ApplicationRecord
		belongs_to :customer
		belongs_to :categorie
		belongs_to :pqa, optional: true


		attachment :image
    # acts_as_paranoid
end
