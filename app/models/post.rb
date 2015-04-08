class Post < ActiveRecord::Base
  attr_accessible :contenido, :likes, :titulo
  has_many :reviews
  after_save :set_likes
  def set_likes
  		self.likes =0
  end
end
