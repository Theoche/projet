class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title
 
  validates :name,  :presence => true
  validates :title, :presence => true,
                    :length => { :minimum => 5 }
  
  #p = Post.new(:content => "A new post")
  #<Post id: nil, name: nil, title: nil,
  #    content: "A new post", created_at: nil,
  #updated_at: nil>
  #>> p.save
#=> false
#>> p.errors.full_messages
#=> ["Name can't be blank", "Title can't be blank", "Title is too short (minimum is 5 characters)"]

 
  has_many :comments
  

  
   

end
