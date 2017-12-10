class CatalogBrasController < ApplicationController

  def index         # GET /restaurants
    @catalogbras = CatalogBra.all
    @measurement = current_user.measurements.new(measurement_params)
    @measurement.save
    @rib_cage_parameter = params['measurement']['rib_cage_parameter'].to_i.ceil
    @breast_cage_rest_perimeter = params['measurement']['breast_cage_rest_perimeter'].to_i.ceil
    @breast_cage_bend_perimeter = params['measurement']['breast_cage_bend_perimeter'].to_i.ceil
    @breast_upper_shape = params['measurement']['breast_upper_shape'].to_i
    @breast_bottom_shape = params['measurement']['breast_bottom_shape'].to_i
    @breast_center_disposition = params['measurement']['breast_center_disposition'].to_i
    @breast_separation = params['measurement']['breast_separation'].to_i
    @breast_roots = params['measurement']['breast_roots'].to_i
    @bras_measurement_user = []
      @catalogbras.each do |catalogbra|
        if @rib_cage_parameter >= catalogbra.min_band_size && @rib_cage_parameter <= catalogbra.max_band_size
          if @breast_cage_bend_perimeter == catalogbra.max_cup_size
             @breast_cage_bend_perimeter = @breast_cage_bend_perimeter + 1
          else @breast_cage_bend_perimeter = @breast_cage_bend_perimeter
          end
          if @breast_cage_bend_perimeter > catalogbra.min_cup_size && @breast_cage_bend_perimeter < catalogbra.max_cup_size
            @bras_measurement_user << catalogbra
          end
        end
      end

  end

  def show          # GET /restaurants/:id
  end

  def new           # GET /restaurants/new
  end

  def create        # POST /restaurants
  end

  def edit          # GET /restaurants/:id/edit
  end

  def update        # PATCH /restaurants/:id
  end

  def destroy       # DELETE /restaurants/:id
  end

  private

  def measurement_params
    params.require(:measurement).permit(:rib_cage_parameter, :breast_cage_rest_perimeter, :breast_cage_bend_perimeter, :breast_upper_shape, :breast_bottom_shape, :breast_center_disposition, :breast_separation, :breast_roots  )
  end

  def user_bra_params
    params.require(:user_bra).permit(:measurement_id, :catalog_bra_id)
  end

end
