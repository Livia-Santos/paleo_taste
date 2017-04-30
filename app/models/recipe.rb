class Recipe < ApplicationRecord
  has_many :ingredients
  has_many :directions

  accepts_nested_attributes_for :ingredients, allow_destroy: true
  accepts_nested_attributes_for :directions,  allow_destroy: true


  validates :title, presence: true

  has_attached_file :image, styles: { medium: "400x400#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
