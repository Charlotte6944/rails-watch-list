class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates_uniqueness_of :movie, scope: :list
  validates_uniqueness_of :list, scope: :movie
  validates :comment, length: { minimum: 6 }
end
