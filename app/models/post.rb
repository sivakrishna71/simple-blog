class Post < ActiveRecord::Base
    
  has_many :parts, :dependent => :destroy
  has_many :comments, :dependent => :destroy
  validates_presence_of :title
  
#  def validate_on_create
#    validate_no_of_parts
#  end
  def validate_on_update
    validate_no_of_parts
  end
  def validate_no_of_parts
    errors.add_to_base("Atleast one part should be there for every post") if self.parts.length < 1 
  end
  def create_or_update_parts(params_hash)
    parts = Array.new
    params_hash.each do |k, v|
      i, id = k.split('_')
      part = id.blank? ? Part.new : Part.find(id)
      part.body = v
      part.post_id = self.id
      part.save
      parts.push part
    end
    parts
  end
end
