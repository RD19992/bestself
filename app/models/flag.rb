class Flag < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :comment_id, :presence => true

  validates :user_id, :presence => true

end
