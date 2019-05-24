class StudentsController < ApplicationController
  
  before_action :load_student, only: %i(show update destroy)

  def index
  	@students = Student.all
  	render json: {success: true, message: "Loading students", data: @students.as_json}
  end

  def create
  	@student = Student.new(student_params)
  	if @student.save
  		render json: {success: true, message: "Student Details", data: @student.as_json}
  	else
  		render json: {success: false, message: "Errors", errors: @student.errors.full_messages}
  	end
  end

  def update
 		if @student.update_attributes(student_params)
  		render json: {success: true, message: "Student Updated successfully", data: @student.as_json}
  	else
  		render json: {success: false, message: "Errors", errors: @student.errors.full_messages}
  	end	 	
  end

  def destroy
  	@student.destroy
  	render json: {success: true, message: "Student Deleted successfully"}
  end

  def show
  	render json: {success: true, message: "Student Details", data: @student.as_json}
  end

  private

  def load_student
  	@student = Student.find(params[:id])
  end

  def student_params
  	params.require(:student).permit(:name, :roll_no)
  end
end
