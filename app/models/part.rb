class Part < ActiveRecord::Base
  belongs_to :post
  cattr_reader :per_page
  @@per_page = 1
end
