class CommentsController < ApplicationController

def new
    @place = place
    @title = "Nuevo Comentario"
    @comment = Comment.new
end

#############

def create
  @place = place
  @comment = Comment.new(params[:comment])
  @comment.user_id = current_user.id
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

def show
  
end

#############

def edit
  
end

#############

def destroy
  
end

#############

end
