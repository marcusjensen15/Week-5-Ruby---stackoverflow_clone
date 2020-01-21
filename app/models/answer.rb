class Answer < ApplicationRecord
  has_many :upvotes
  belongs_to :question
end
