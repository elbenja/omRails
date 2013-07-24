class Pin < ActiveRecord::Base
  # attr_accessible :description, :image # This line won't work in Rails 4, instead, you'll have to do what I show below

  validates :description, presence: true
  validates :user_id, presence: true
  has_attached_file :image, styles: { medium: "320x840>"}

	validates_attachment :image, presence: true,
                            content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                            size: { less_than: 5.megabytes }               

# validates_attachment_content_type :image, :content_type=>['image/jpeg', 'image/png', 'image/gif'] 

  belongs_to :user

end
