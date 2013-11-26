namespace :db do

  desc "generate some crap posts"
  task :dummies => :environment do
    alphabet = ("a".."z").to_a
    30000.times do
      t = ""
      p = ""
      150.times { t += alphabet[rand(25) + 1] }
      20.times { p += alphabet[rand(25) + 1] }
      Post.create!(:title => p, :text => t)
    end
  end

end
