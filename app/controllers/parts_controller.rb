class PartsController < ApplicationController
  def add_part
    post_id = params[:post_id]
    @post = post_id.blank? ? Post.new : Post.find(post_id)
    i = params[:i].to_i
    render :update do |page|
      page.replace "part-contents", :partial => "part_form", :locals => {:i => i}
    end
  end
end
