class CommentsController < ApplicationController
  before_action :set_topic

  def new
    @comment = Comment.new
  end

  def create
    @comment = @topic.comments.new(comment_params)
  end

  private
    def set_topic
      @topic = Topic.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:body, :author)
    end
end
