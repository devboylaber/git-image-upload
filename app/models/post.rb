class Post < ActiveRecord::Base
  belongs_to :user
  paginates_per 5

  validates :title, presence: true
  validates :body, presence: true

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>"
  }, :default_url => "/images/:style/missing.
  png"

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/  
end
