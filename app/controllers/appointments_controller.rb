class AppointmentsController < ApplicationController
    
  def new
    @doctor=Doctor.find(params[:doctor_id])
    @appointment=Appointment.new
  end
  

  def create
    temp= appointment_params
    temp[:patient_id]=current_user.id
    @doctor=Doctor.find(params[:doctor_id])
    @appointment = @doctor.appointments.create(temp )       
    if @appointment.save
      redirect_to patient_path(current_user.id)
    else
      render :new
    end
   end 
  
  def show
    @appointment=Doctor.find(params[:id])                     
  end
  def edit
    @doctor=Doctor.find(params[:doctor_id])
     @appointment=Appointment.find(params[:id])
  end

  def update
    if current_user.type=="Doctor"
      @doctor=Doctor.find(params[:doctor_id])
      @appointment = Appointment.find(params[:id])
      if @doctor.appointments.update(appointment_params2)
        redirect_to root_path
      else
        render :edit
      end
    
    else
      @doctor=Doctor.find(params[:doctor_id])
      @appointment =Appointment.find(params[:id])       
        if  @doctor.appointments.update(appointment_params)
           redirect_to patient_path(current_user.id)
        else
            render :new
        end
    end
  end
  
  
  def destroy
    @appointment=Appointment.find(params[:id])
    @appointment.destroy
    redirect_to root_path
  end
    private
      def appointment_params
         params.require(:appointment).permit(:date, :time, :patients_age, :patients_problem, :doctor_id , :patient_id, :prescription)
      end

      def appointment_params2
        params.require(:appointment).permit(:prescription)
     end
end



