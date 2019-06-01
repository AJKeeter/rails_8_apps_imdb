class Play < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :reviews

  has_attached_file :play_img, :styles => { :play_index => "1250x1350>", :play_show => "1000x1005>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :play_img, :content_type => /\Aimage\/.*\Z/
end

