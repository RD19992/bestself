class Comment < ApplicationRecord
  # Direct associations

  belongs_to :target_user,
             :class_name => "Target"

  belongs_to :source_user,
             :class_name => "Source"

  belongs_to :category

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
