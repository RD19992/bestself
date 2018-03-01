class Flag < ApplicationRecord
  # Direct associations

  belongs_to :comment

  # Indirect associations

  # Validations

  validates :comment_id, :presence => true

  validates :user_id, :presence => true

end
