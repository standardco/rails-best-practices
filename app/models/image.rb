class Image < ActiveRecord::Base
  belongs_to :product
  has_attached_file :image, styles: { thumb: '350x350#' }
  validates_attachment_presence :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
