class Message < ApplicationRecord
  belongs_to :room, optional: true
end
