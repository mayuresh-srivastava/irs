class IncidentsController < ApplicationController

  def new
    @incident = Incident.new
  end

  def create
    @incident = Incident.new(incident_params)
    if @incident.save
      flash[:notice] = t('ty')
      redirect_to root_path
    else
      render :new
    end
  end

  def new_long
    @incident = Incident.new
  end

  private

  def incident_params
    params.require(:incident).permit(:reported_anonymously, :name, :email, :role, :involved_people, :other_observers, :datetime, :location, :description, types: [], attachments: [])
  end
end
