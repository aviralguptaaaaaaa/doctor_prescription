class DoctorsController < ApplicationController
    def index
        @doctors=Doctor.all
    end
    
    def new
        @doctor=Doctor.new
    end
    
    def show
      @patient=current_user
      @doctor = Doctor.find(params[:id])
    end
    def edit
        @doctor = Doctor.find(params[:id])
      end
    
   
    def update
        @doctor= Doctor.find(params[:id])
    
        if @doctor.update(user_params_second)
          redirect_to root_path
        else
          render :edit
        end
      end

      def user_params_second
        params.require(:doctor).permit(:specialist_in, :qualifications, :certifications)
      end
end
