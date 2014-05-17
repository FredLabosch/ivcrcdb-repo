class PatientsController < ApplicationController
  def index
    @patients = Patient.paginate(page: params[:page], :per_page => 20)
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      flash[:success] = "Patient created!"
      redirect_to @patient
    else
      render 'new'
    end
  end

  def edit
    @patient = Patient.find(params[:id])
  end

  def update
    @patient = Patient.find(params[:id])
    if @patient.update_attributes(patient_params)
      flash[:success] = "Profile updated"
      redirect_to @patient
    else
      render 'edit'
    end
  end

  def destroy
    Patient.find(params[:id]).destroy
    flash[:success] = "Patient deleted."
    redirect_to patients_url
  end

  private

  def patient_params
    params.require(:patient).permit(:name,
    :first_name,
    :gender,
    :birthday,
    :age,
    :street,
    :zip_code,
    :city,
    :phone,
    :cell_phone,
    :naa)
  end
end