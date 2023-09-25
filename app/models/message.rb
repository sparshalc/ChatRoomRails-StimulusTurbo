class Message < ApplicationRecord
  belongs_to :user
  belongs_to :room

  after_commit do
    broadcast_append_to "room_#{room.id}"
  end




  private

  def broadcast_append_to_room
  end
end
