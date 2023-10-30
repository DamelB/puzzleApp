class CommentsController < ApplicationController
	def create
    @puzzle = Puzzle.find(params[:puzzle_id])
    @comment = @puzzle.comments.create(comment_params)
    redirect_to puzzle_path(@puzzle)
  end
	
	def destroy
    @puzzle = Puzzle.find(params[:puzzle_id])
    @comment = @puzzle.comments.find(params[:id])
    @comment.destroy
    redirect_to puzzle_path(@puzzle), status: :see_other
  end
	
  private
    def comment_params
      params.require(:comment).permit(:nick, :body)
    end
end
