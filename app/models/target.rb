class Target < ApplicationRecord
  # Direct associations

  has_many   :comments,
             :foreign_key => "target_user_id",
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

end
