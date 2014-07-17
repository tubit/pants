class LikesController < ApplicationController
  authorize_resource :post,
    parent: false

  respond_to :js, :json

  def create
    if post = Post[params[:guid]]
      @post = post.like!(current_site)
      respond_with @post
    else
      raise "nope"
    end
  end
end
