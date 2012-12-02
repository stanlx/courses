class CourseCodesController < ApplicationController
  # GET /course_codes
  # GET /course_codes.json
  def index
    @course_codes = CourseCode.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @course_codes }
    end
  end

  # GET /course_codes/1
  # GET /course_codes/1.json
  def show
    @course_code = CourseCode.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @course_code }
    end
  end

  # GET /course_codes/new
  # GET /course_codes/new.json
  def new
    @course_code = CourseCode.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @course_code }
    end
  end

  # GET /course_codes/1/edit
  def edit
    @course_code = CourseCode.find(params[:id])
  end

  # POST /course_codes
  # POST /course_codes.json
  def create
    @course_code = CourseCode.new(params[:course_code])

    respond_to do |format|
      if @course_code.save
        format.html { redirect_to @course_code, notice: 'Course code was successfully created.' }
        format.json { render json: @course_code, status: :created, location: @course_code }
      else
        format.html { render action: "new" }
        format.json { render json: @course_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /course_codes/1
  # PUT /course_codes/1.json
  def update
    @course_code = CourseCode.find(params[:id])

    respond_to do |format|
      if @course_code.update_attributes(params[:course_code])
        format.html { redirect_to @course_code, notice: 'Course code was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @course_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_codes/1
  # DELETE /course_codes/1.json
  def destroy
    @course_code = CourseCode.find(params[:id])
    @course_code.destroy

    respond_to do |format|
      format.html { redirect_to course_codes_url }
      format.json { head :no_content }
    end
  end
end
