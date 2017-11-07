class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :blog

  validates :content, present: true, length: { minimum: 5, maximum: 1000}

  after_create_commit { CommentBroadcastJob.perform_later(self) }
end
