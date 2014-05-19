class GeneralInfosController < ApplicationController
  def destroy
    @general_info.destroy
    redirect_to patients_path
  end
end
