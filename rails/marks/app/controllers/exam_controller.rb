class ExamController < ApplicationController
  before_action :set_exam, only: [:show, :edit, :update, :destroy]
  
  def index
  	@exams = Exam.all
  end
  
  def show
  end

  def edit
  	
  end
  
  def new
  	@exam = Exam.new
  end

  

	def create
    @exam = Exam.new(exam_params)

    respond_to do |format|
	      if @exam.save
	        format.html { redirect_to @exam, notice: 'Student was successfully created.' }
	        format.json { render :show, status: :created, location: @exam }
	      else
	        format.html { render :new }
	        format.json { render json: @exam.errors, status: :unprocessable_entity }
	      end
    	end
  	end

 

  def update
  	
  end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_exam
      @exam = Exam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exam_params
      params.require(:exam).permit(:title)
    end

end
