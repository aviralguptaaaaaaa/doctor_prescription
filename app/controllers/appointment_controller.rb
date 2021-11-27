class AppointmentController < ApplicationController
    
    def new
        @appointment=Appointment.new

    def create
        @patient = Patient.find(params[:patient_id])
        @appointment = @patient.appointments.create(comment_params)
        redirect_to patient_path(@patient)
      end
    
      private
        def comment_params
          params.require(:appointment).permit(:date, :patients_problem, :patients_age, :time)
        end
end
 
