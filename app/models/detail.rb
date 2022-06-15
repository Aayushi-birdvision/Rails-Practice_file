class Detail < ApplicationRecord
  validates :Firstname, presence: true, length: {minimum:6, maximum: 100}
  validates :Lastname, presence: true, length: {minimum:6, maximum: 100}
end
