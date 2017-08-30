class Comment < ApplicationRecord
  belongs_to :topic
  before_save :check_author

  def check_author
    self.author = 'anon' if self.author.blank?
  end
  
end
