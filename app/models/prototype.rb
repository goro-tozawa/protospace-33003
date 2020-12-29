class Prototype < ApplicationRecord
  # has_many :comments
  belongs_to :user
  has_many :comments,dependent: :destroy

  # ,through: :comments
  has_one_attached :image
  validates :image, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  # validates :text, presence: true、２つは必要ない？
  validates :title, presence: true
end