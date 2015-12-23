require 'test_helper'

class BooksControllerTest < ActionController::TestCase

  test 'book_author' do

    balena = Book.find_by_isbn('390838973279')
    assert balena.author == 'Herman Melville'

  end

  test 'available_for_rent' do

    balena = Book.find_by_isbn('390838973279')
    assert_not balena.available_for_rent?

  end

end
