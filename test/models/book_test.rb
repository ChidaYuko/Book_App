require 'test_helper'

class BookTest < ActiveSupport::TestCase
  def setup
    @book = Book.new(title: "書名", author: "著者", publicationYear: 2019)
  end

  test "should be valid" do
    assert @book.valid?
  end

  test "title should be present" do
    @book.title = "  "
    assert_not @book.valid?
  end

  test "default value" do
    assert_equal @book.rentalHakata, false
    assert_equal @book.photo, "book.png"
  end
end
