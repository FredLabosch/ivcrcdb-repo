class ExaminationsController < ApplicationController
  before_filter :set_record

  def index
    @examinations = Examination.paginate(:page => params[:page])
  end

  def new
    @examination = Examination.new.tap do |ex|
      ex.examination_date = Time.now
      ex.age_at_examination = @patient.age
    end
    #raise "#{@examination.inspect}"
    #raise "#{@examination.to_yaml}"
  end

  def show
    @examination = @patient.examinations.find_by_id params[:id]
  end

  def edit
    @examination = @patient.examinations.find(params[:id])
  end

  def create
    @patient = Patient.find(params[:patient_id])
    @examination = @patient.examinations.build(examination_params)
    if @examination.save
      flash[:success] = "Examination created!"
      redirect_to patient_path(@patient)
    else
      render 'new'
    end
  end

  def destroy
    @patient = Patient.find(params[:patient_id])
    @examination = @patient.examinations.find(params[:id])
    @examination.destroy
    redirect_to patient_path(@patient)
  end

  private

  def set_record
    @patient = Patient.find_by_id params[:patient_id]
  end

  def examination_params
    params.require(:examination).permit(
    :examination_date,
    :examination_time,
    :examiner,
    :profession,
    :external_data,
    :usable_data,
    :comment_patient,
    :comment_examiner,
    :short_description)
  end
end
