class CommentsController < ApplicationController

  def create
    @comment = current_user.comments.build(:title => params[:comment][:title], :content => params[:comment][:content])
#    @comment = Comment.create(params[:comment])
############################################                              
                              
    #@comment.user_id = current_user.id
    #@comment.place_id = @place.id
      if @comment.save
        redirect_to places_path(params[:place_id])
  #    else
  #      render :action => 'new'
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
