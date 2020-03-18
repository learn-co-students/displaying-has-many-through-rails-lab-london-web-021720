class DoctorsController < ApplicationController
    before_action :get_doctor, only: :show

    def show
        @appointments = @doctor.appointments
    end


    private 

    def get_doctor
        @doctor = Doctor.find_by(id: params[:id])
    end
    
end
