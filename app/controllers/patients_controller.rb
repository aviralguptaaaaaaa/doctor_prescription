class PatientsController < ApplicationController

  def index
    @patients=Patient.all
  end
  def new
    @patient=Patient.new
  end
  def show
    @patient = User.find(params[:id])
  end

 
end

        