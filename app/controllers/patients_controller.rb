class PatientsController < ApplicationController
    before_action :get_patient, only: :show

    def index
        @patients = Patient.all
    end

    def show
        @appointments = @patient.appointments
    end

    private

    def get_patient
        @patient = Patient.find_by(id: params[:id])
    end
end
