class Author < ApplicationRecord
  authenticates_with_sorcery!
  has_many :articles
  validates_confirmation_of :password, message: 'should match confirmation', if: :password
end
