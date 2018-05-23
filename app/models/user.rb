class User < ApplicationRecord
	has_many :friendships, dependent: :destroy
	has_many :friends, through: :friendships
	has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
	has_secure_password

	def friends
    friends_array = friendships.map{|friendship| friendship.friend if friendship.confirmed}
    friends_array + inverse_friendships.map{|friendship| friendship.user if friendship.confirmed}
    friends_array.compact
  end
end
