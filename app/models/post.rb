class Post < ActiveRecord::Base
  attr_accessible :text, :title

  def self.all_cached
    Rails.cache.fetch("posts", :expires_in => 400.seconds) do
      Post.all
    end
  end


  def self.length_total
    Rails.cache.fetch("length_total", :expires_in => 200.seconds) do
      Post.all.reduce(0) { |acc, pos| acc + pos.text.length }
    end
  end

end
