class User < ApplicationRecord
	  has_many :microposts
	  validates :name  ,presence: true    
	  validates :email , length: { in: 2..100, too_long: "Ban da nhap email qua dai"}, presence: true,
	  uniqueness: {case_sensitive: false}
	  # validate :name_valid
	  # def name_valid
	  # 	  if name.present? && name != "thai"
	  # 	  	errors.add(:name,"Ten khong hop le")
	  # 	  end
	  # end
end
