class Reply < ApplicationRecord
  # Direct associations

  belongs_to :comment

  # Indirect associations

  # Validations

  validates :content, :presence => true

end
