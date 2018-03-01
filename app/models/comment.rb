class Comment < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :target_user_id, :presence => true

  validates :type_id, :presence => true

end
