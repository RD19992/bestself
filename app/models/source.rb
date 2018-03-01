class Source < ApplicationRecord
  # Direct associations

  has_many   :comments,
             :foreign_key => "source_user_id",
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

end
