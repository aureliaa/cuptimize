class MeasurementsController < ApplicationController
  skip_before_action :authenticate_user!, :only => :new
  def index         # GET /restaurants
    @measurements = Measurement.all
  end

  def show          # GET /restaurants/:id

  end

  def new           # GET /restaurants/new
    @measurement = Measurement.new
  end

  def create
    @measurement = Measurement.new(measurement_params)
    @measurement.save
    redirect_to measurements_path(@measurement)
  end

  def edit          # GET /restaurants/:id/edit
  end

  def update        # PATCH /restaurants/:id
  end

  def destroy       # DELETE /restaurants/:id
  end

  private


end
