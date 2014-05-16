class PatientsController < ApplicationController
  def index
    @patients = Patient.paginate(page: params[:page])
  end

  def show
    @user = Patient.find(params[:id])
  end

  def new
    @patient = Patient.new
  end
end

def create
  @patient = Patient.new(user_params)
end

def edit
end

def update
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