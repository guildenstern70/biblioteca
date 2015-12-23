class Book < ActiveRecord::Base

  belongs_to :category

  def available_for_rent?
    self.user_id.nil?
  end

end
