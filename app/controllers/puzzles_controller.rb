class PuzzlesController < ApplicationController
  def index
		@puzzles = Puzzle.all
  end
	
	def show
		@puzzle = Puzzle.find(params[:id])
	end
	
	def new
		@puzzle = Puzzle.new
	end
	
	def create
		@puzzle = Puzzle.new(puzzle_params)
		
		if @puzzle.save
			redirect_to @puzzle
		else
			render :new, status: :unprocessable_entity
		end
	end
	
	def edit
		@puzzle = Puzzle.find(params[:id])
	end
	
	def update
		@puzzle = Puzzle.find(params[:id])
		
		if @puzzle.update(puzzle_params)
			redirect_to @puzzle
		else
			render :new, status: :unprocessable_entity
		end
	end
	
	def destroy
		@puzzle = Puzzle.find(params[:id])
		@puzzle.destroy
		
		redirect_to root_path, status: :see_other
	end
	
	private
		def puzzle_params
			params.require(:puzzle).permit(:title, :rules, :rows, :cols)
		end
end
