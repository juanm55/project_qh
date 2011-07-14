class CommentsController < ApplicationController

def create
  @comment = Comment.new(params[:newcomment])
  #@comment.user_id = current_user.id
  #@comment.place_id = @place.id
    if @comment.save
      redirect_to @place
    else
      render :action => 'new'
    end
end

#############

def index
  
end

#############

def edit
  
end

#############

def destroy
  
end

#############

end
