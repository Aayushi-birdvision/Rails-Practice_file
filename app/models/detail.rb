class Detail < ApplicationRecord
  validates :first_name, presence: true, length: {minimum:6, maximum: 100}
  validates :last_name, presence: true, length: {minimum:6, maximum: 100}
end
