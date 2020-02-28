class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy,:active, :deactive]

  # GET /cars
  # GET /cars.json
  def index
    @cars = Car.all
    @page = params[:page].to_i > 0 ? params[:page].to_i : 1
    @cars = Car.page(@page).per(3)
    @cars = @cars.where('name like ? or brand_id like ? or model_id like ?',
      "%#{params[:name]}%","%#{params[:name]}%","%#{params[:name]}%") if params[:name].present?
    @cars = @cars.where(active: (params[:active] == '1')) if params[:active].present?
    end
    # GET /cars/1
    # GET /cars/1.json
  def show
  end

  # GET /cars/new
  def new
    @car = Car.new
  end

  # GET /cars/1/edit
  def edit
  end

    # PUT /cars/1/active
  def active
    @car.active = true
    @car.save
    redirect_to cars_path, notice: 'Car Successfully Activated.'
  end

  # PUT /cars/1/deactive
  def deactive
    @car.active = false
    @car.save
    redirect_to cars_path, notice: 'Car Successfully Deactivated.'
  end
  # POST /cars
  # POST /cars.json
  def create
    @car = Car.new(car_params)

    respond_to do |format|
      if @car.save
        format.html { redirect_to @car, notice: 'Car was successfully created.' }
        format.json { render :show, status: :created, location: @car }
      else
        format.html { render :new }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cars/1
  # PATCH/PUT /cars/1.json
  def update
    respond_to do |format|
      if @car.update(car_params)
        format.html { redirect_to @car, notice: 'Car was successfully updated.' }
        format.json { render :show, status: :ok, location: @car }
      else
        format.html { render :edit }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cars/1
  # DELETE /cars/1.json
  def destroy
    @car.destroy
    respond_to do |format|
      format.html { redirect_to cars_url, notice: 'Car was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car
      @car = Car.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_params
      params.require(:car).permit(:name, :brand_id, :model_id, :version_id, :car_type_id, :rto_price, :on_road_price, :total_price,:active)
    end
end
