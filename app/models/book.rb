class Book < ApplicationRecord
  validates :title, presence: true
  after_initialize :set_default_value, if: :new_record?

  private
    def set_default_value
      self.rentalHakata ||= false
      self.photo ||= "book.png"
    end
end
