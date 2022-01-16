class StudentMarksController < ApplicationController
  before_action :set_student_mark, only: %i[ show edit update destroy ]

  # GET /student_marks or /student_marks.json
  def index
    @student_marks = StudentMark.all
  end

  # GET /student_marks/1 or /student_marks/1.json
  def show
  end

  # GET /student_marks/new
  def new
    @student_mark = StudentMark.new
  end

  # GET /student_marks/1/edit
  def edit
  end

  # POST /student_marks or /student_marks.json
  def create
    @student_mark = StudentMark.new(student_mark_params)

    respond_to do |format|
      if @student_mark.save
        StudentMailer.student_mark_email(@student_mark).deliver_now
        format.html { redirect_to student_mark_url(@student_mark), notice: "Student mark was successfully created." }
        format.json { render :show, status: :created, location: @student_mark }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @student_mark.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_marks/1 or /student_marks/1.json
  def update
    respond_to do |format|
      if @student_mark.update(student_mark_params)
        format.html { redirect_to student_mark_url(@student_mark), notice: "Student mark was successfully updated." }
        format.json { render :show, status: :ok, location: @student_mark }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @student_mark.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_marks/1 or /student_marks/1.json
  def destroy
    @student_mark.destroy

    respond_to do |format|
      format.html { redirect_to student_marks_url, notice: "Student mark was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_mark
      @student_mark = StudentMark.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def student_mark_params
      params.require(:student_mark).permit(:m1, :m2, :m3, :total, :student_id)
    end
end
