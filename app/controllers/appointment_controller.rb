class AppointmentController < ApplicationController
    
    def new
        @appointment=Appointment.new
    end
    def create
        @patient = Patient.find(params[:patient_id])
        @appointment = @patient.appointment.create(comment_params)
        redirect_to patient_path(@patient)
      end
    
      private
        def comment_params
          params.require(:appointment).permit(:date, :time, :patients_age, :weight, :patients_problem)
        end
end
 
