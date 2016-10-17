class Player < ApplicationRecord
	mount_uploader :avatar, AvatarUploader
	validates :name, presence: true, length: { maximum: 50 }
	validate :avatar_size

	private
		def avatar_size
			if avatar.size > 5.megabytes
				errors.add(:avatar, "should be less than 5MB")
			end
		end
end
