class PatientsController < ApplicationController

  def index
    @patients=Patient.all
  end

  def new
    @patient=Patient.new
 end
  def create
      @patient=Patient.new(patient_params)
      if @patient.save
          render_to @patient
      else
          render :new
        end 
    end

    private
        def patient_params
          params.require(:patient).permit(:Age, :Weight, :Disease)
        end

end

        