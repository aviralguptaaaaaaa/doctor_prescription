class MedicinesController < ApplicationController
    def new

        @app=Appointment.find(params[:appointment_id])
        @medicine=@app.medicines.new
    end
    def create
        puts medicine_params
        tmp=params
       
        @app = Appointment.find(params[:appointment_id])
        @medicine= @app.medicines.create(medicine_params)
        if @medicine.save
            redirect_to root_path
        else
            render :new
        end
    end
    
      private
        def medicine_params
          params.require(:medicine).permit(:name, :purpose, :medicine_intake,:appointment_id)
        end
end


