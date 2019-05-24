class TeachersController < ApplicationController
 before_action :load_teacher, only: %i(show update destroy)

  def index
  	@teachers = Teacher.all
  	render json: {success: true, message: "Loading teachers", data: @teachers.as_json}
  end

  def create
  	@teacher = Teacher.new(teacher_params)
  	if @teacher.save
  		render json: {success: true, message: "teacher Details", data: @teacher.as_json}
  	else
  		render json: {success: false, message: "Errors", errors: @teacher.errors.full_messages}
  	end
  end

  def update
 		if @teacher.update_attributes(teacher_params)
  		render json: {success: true, message: "teacher Updated successfully", data: @teacher.as_json}
  	else
  		render json: {success: false, message: "Errors", errors: @teacher.errors.full_messages}
  	end	 	
  end

  def destroy
  	@teacher.destroy
  	render json: {success: true, message: "teacher Deleted successfully"}
  end

  def show
  	render json: {success: true, message: "teacher Details", data: @teacher.as_json}
  end

  private

  def load_teacher
  	@teacher = Teacher.find(params[:id])
  end

  def teacher_params
  	params.require(:teacher).permit(:name, :subject, :join_date, :sallary)
  end
end
