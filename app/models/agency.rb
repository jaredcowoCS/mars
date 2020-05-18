class Agency < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :billing_terms, presence: true
  validates :credit_rating, presence: true
  validates :billing_terms, :numericality => {:only_integer => true}
  enum credit_rating: %i[Good Fair Poor]
end
