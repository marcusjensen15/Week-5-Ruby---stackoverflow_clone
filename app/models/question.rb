class Question < ApplicationRecord
  has_many :answers, dependent: :destroy

  has_many :upvotes, dependent: :destroy
  belongs_to :user
end
