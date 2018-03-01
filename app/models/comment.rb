class Comment < ApplicationRecord
  # Direct associations

  belongs_to :type

  has_many   :flags,
             :dependent => :destroy

  has_many   :likes,
             :dependent => :destroy

  has_many   :replies,
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :category_id, :presence => true

  validates :content, :presence => true

  validates :source_user_id, :presence => true

  validates :target_user_id, :presence => true

  validates :type_id, :presence => true

end
