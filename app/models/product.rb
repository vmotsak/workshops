# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  price       :float
#  created_at  :datetime
#  updated_at  :datetime
#  category_id :integer
#  user_id     :integer
#

class Product < ActiveRecord::Base
  validates :title , presence: true
  validates :description , presence: true
  validates :price , presence: true, format: {with: /\A\d+\.*\d{0,2}\z/,message: "invalid number"}
  belongs_to :category
  belongs_to :user
  has_many :reviews

  def average_rating
    reviews.inject(0.0){ |sum, r| sum + r.rating } / reviews.size
  end

  def owner?(provided_user)
    provided_user && self.user == provided_user
  end
end
