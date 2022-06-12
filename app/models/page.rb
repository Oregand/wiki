class Page < ApplicationRecord
  has_paper_trail
  
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
