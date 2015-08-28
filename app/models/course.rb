class Course < ActiveRecord::Base
  has_many :wants, dependent: :destroy
  validates :title, presence: true, length: { minimum: 5 }
end
