# == Schema Information
#
# Table name: rooms
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_rooms_on_user_id  (user_id)
#
class Room < ApplicationRecord
    belongs_to :user
    has_many :messages, dependent: :destroy
    has_many :entries, dependent: :destroy
end
