class Book < ActiveRecord::Base

  def available_for_rent?
    self.user_id.nil?
  end

end
