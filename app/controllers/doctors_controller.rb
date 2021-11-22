class DoctorsController < ApplicationController
    def show
        @doctors=Doctor.all
    def new
        @doctor=Doctor.new
    end

    def create
        @doctor=Doctor.new(doctor_params)
        if @doctor.save
            redirect_to @doctor
         else
            render :new
          end
        end

        private
        def doctor_params
          params.require(:doctor).permit(:specialist_in, :Qualifications, :Certifications)
        end

end
