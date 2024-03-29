class CoursesController < ApplicationController
  respond_to :html, :xml, :json
  
  def course_users
    @course_users = Course.find(params[:id]).auth_users
    respond_with @course_users
  end

  def index
    @courses = Course.all
    respond_with @courses
  end
  
  def show
    @course = Course.find(params[:id])
    respond_with @course
  end

  def new
    @course = Course.new
    respond_with @course
  end

  def edit
    @course = Course.find(params[:id])
  end

  def create
    @course = Course.new(params[:course])

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render json: @course, status: :created, location: @course }
      else
        format.html { render action: "new" }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @course = Course.find(params[:id])

    respond_to do |format|
      if @course.update_attributes(params[:course])
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy

    respond_to do |format|
      format.html { redirect_to courses_url }
      format.json { head :no_content }
    end
  end
 
  def add_course
    @add_course = CourseUser.new(params[:course])
    @add_course.course_id =  params[:id]
    @add_course.user_id = current_user.id
    @add_course.updated_at = Time.now
    @add_course.save

    respond_to do |format|
      if @add_course.save
        format.html {redirect_to courses_url }
        format.json { render json: @add_course, status: :created, location: @add_course }
      else
        format.json { render json: @add_course.errors, status: :unprocessable_entity }
      end
    end
  end

  def rm_course
    @rm_course = CourseUser.find_by_user_id_and_course_id(params[:user_id],params[:course_id])
    @rm_course.destroy

    respond_to do |format|
      format.html { redirect_to courses_url }
      format.json { head :no_content }
    end

  end

end
