class MedicinesController < ApplicationController
    def new

        @app=Appointment.find(params[:appointment_id])
        @medicine=@app.medicines.new
    end

    def create
        #puts medicine_params
        #tmp=params
        @app = Appointment.find(params[:appointment_id])
        @medicine= @app.medicines.create(medicine_params)
        if @medicine.save
            redirect_to root_path
        else
            render :new
        end
    end

    def edit 
        @app = Appointment.find(params[:appointment_id])
      #  @medicine=  Medicine.find(params[:medicine_id]) #@app.medicines.find(params[:id])
      @medicine=Medicine.find(params[:id])      
    end
    def update 
        @app = Appointment.find(params[:appointment_id])
       # @medicine=Medicine.find(params[:medicine_id])   
        @medicine=  Medicine.find(params[:id])
       if @medicine.update(@medicine_params)
           redirect_to root_path
        else
          render :edit
       end
    end
   def destroy
   @medicine=Medicine.find(params[:id])
    @medicine.destroy
    redirect_to root_path
  end
    

      private
        def medicine_params
          params.require(:medicine).permit(:name, :purpose, :medicine_intake,:appointment_id)
        end
end


