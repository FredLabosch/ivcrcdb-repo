class ExaminationsController < ApplicationController
  def destroy
    @examination.destroy
    redirect_to patients_path
  end
end
