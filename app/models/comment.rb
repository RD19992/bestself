class Comment < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :content, :presence => true

  validates :source_user_id, :presence => true

  validates :target_user_id, :presence => true

  validates :type_id, :presence => true

end
