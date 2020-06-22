class EstimatesController < ApplicationController
  before_action :set_estimate, only: [:show, :edit, :update, :destroy]

  # GET /estimates
  # GET /estimates.json
  def index
    @estimates = Estimate.all
  end

  # GET /estimates/1
  # GET /estimates/1.json
  def show
  end

  # GET /estimates/new
  def new
    @estimate = Estimate.new
  end

  # GET /estimates/1/edit
  def edit
  end

  # POST /estimates
  # POST /estimates.json
  def create
    @estimate = Estimate.new(estimate_params)

    respond_to do |format|
      if @estimate.save
        format.html { redirect_to @estimate, notice: 'Estimate was successfully created.' }
        format.json { render :show, status: :created, location: @estimate }
      else
        format.html { render :new }
        format.json { render json: @estimate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estimates/1
  # PATCH/PUT /estimates/1.json
  def update
    respond_to do |format|
      if @estimate.update(estimate_params)
        format.html { redirect_to @estimate, notice: 'Estimate was successfully updated.' }
        format.json { render :show, status: :ok, location: @estimate }
      else
        format.html { render :edit }
        format.json { render json: @estimate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estimates/1
  # DELETE /estimates/1.json
  def destroy
    @estimate.destroy
    respond_to do |format|
      format.html { redirect_to estimates_url, notice: 'Estimate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_estimate
      @estimate = Estimate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def estimate_params
      params.fetch(:estimate).permit(:user_id, :name, :origin_address, :dest_addres, :home_phone, :bus_phone, :account, :pack_date, :load_date, :delivery_date, :special_instructions, :pounds, :rooms, :cubic_feet, :local_moving_movers, :local_moving_per_hour, :local_moving_estimated_hours, :local_moving_driving_time, :local_moving_insurance_charge, :local_moving_per_thousand, :storage_movers, :storage_per_hour, :storage_estimated_hours, :storage_handling_per_crate, :storage_monthly_per_crate, :storage_insurance_charge, :storage_per_hundred_per_month, :container_charges, :packing_labor, :unpacking_labor, :other_service_desc, :other_service_cost, :estimate_total, :down_payment, :small_lamps, :dishes, :clothes, :all_breakables, :mirrors, :pictures, :everything_but_furniture, :origin_elevator, :origin_carry_flights, :origin_lower_hoist, :origin_long_carry, :destination_elevator, :destination_carry_flights, :destination_lower_hoist, :destination_long_carry, :containers_est_num_barrel_dish_packs, :containers_est_num_carton_one_n_half, :containers_est_num_carton_three, :containers_est_num_carton_four_n_half, :containers_est_num_carton_six, :containers_est_num_carton_six_n_half, :containers_est_num_wardrobe_ctn, :containers_est_num_mattress_twin, :containers_est_num_mattress_full, :containers_est_num_mattress_king_queen, :containers_est_num_mattress_crib, :containers_est_num_mirror_ctn, :containers_per_unit_barrel_dish_packs, :containers_per_unit_carton_one_n_half, :containers_per_unit_carton_three, :containers_per_unit_carton_four_n_half, :containers_per_unit_carton_six, :containers_per_unit_carton_six_n_half, :containers_per_unit_wardrobe_ctn, :containers_per_unit_mattress_twin, :containers_per_unit_mattress_full, :containers_per_unit_mattress_king_queen, :containers_per_unit_mattress_crib, :containers_per_unit_mirror_ctn, :packing_est_num_barrel_dish_packs, :packing_est_num_carton_one_n_half, :packing_est_num_carton_three, :packing_est_num_carton_four_n_half, :packing_est_num_carton_six, :packing_est_num_carton_six_n_half, :packing_est_num_wardrobe_ctn, :packing_est_num_mattress_twin, :packing_est_num_mattress_full, :packing_est_num_mattress_king_queen, :packing_est_num_mattress_crib, :packing_est_num_mirror_ctn, :packing_est_num_crates_min_size_mirror, :packing_per_unit_barrel_dish_packs, :packing_per_unit_carton_one_n_half, :packing_per_unit_carton_three, :packing_per_unit_carton_four_n_half, :packing_per_unit_carton_six, :packing_per_unit_carton_six_n_half, :packing_per_unit_wardrobe_ctn, :packing_per_unit_mattress_twin, :packing_per_unit_mattress_full, :packing_per_unit_mattress_king_queen, :packing_per_unit_mattress_crib, :packing_per_unit_mirror_ctn, :packing_per_unit_crates_min_size_mirror, :crates_greater_size_mirror, :total_estimated_charges)
    end
end
