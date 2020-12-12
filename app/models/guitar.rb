class Guitar < ApplicationRecord
  belongs_to :user
	
	has_many :favorites
	 has_many :guitar_comments
	
	def favorited_by?(user)
		favorites.where(user_id: user.id).exists?
	end

	validates :title, presence: true
	validates :body, presence: true, length: { maximum: 200 }
end