class Author < ApplicationRecord
# after_validation :set_status
  #  before_save :check_name_has_value
  # scope :check_name_length, ->{ where("LENGTH(name) > 5 ") }
  #  before_update :before_update_callback
  #  after_update :after_update_callback
  #  after_save :after_save_callback
  
  # private

  # def remove_whitespaces
  #    name.strip!
  #  end

  #  def set_status
  #    self.status = errors.empty?
  #  end

  # def check_name_has_value
  #   binding.pry
  #   if name.empty?
  #     a = Author.create(name: 'demo')
  #     a.save
  #   end
  # end

   # def before_update_callback
   #   Author.create(:name => 'before_update')
   # end

   # def after_update_callback
   #   Author.create(:name => 'after_update')
   # end

   # def after_save_callback
   #   Book.create(:name => 'i am after_save',:author_id => 1, :description => 'i am after_save book')
   # end

end
