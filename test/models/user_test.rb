require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test 'number_of_users' do

    nr_of_users = User.count
    assert nr_of_users == 2

  end

end
