class Post < ActiveRecord::Base
  attr_accessible :text, :title

  def self.length_total
    Rails.cache.fetch("length_total", :expires_in => 10.seconds) do
      Post.all.reduce(0) { |acc, pos| acc + pos.text.length }
    end
  end

end
