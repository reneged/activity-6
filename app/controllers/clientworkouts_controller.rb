class ClientworkoutsController < ApplicationController
  before_action :set_clientworkout, only: [:show, :edit, :update, :destroy]

  # GET /clientworkouts
  # GET /clientworkouts.json
  def index
    @clientworkouts = Clientworkout.all
  end

  # GET /clientworkouts/1
  # GET /clientworkouts/1.json
  def show
  end

  # GET /clientworkouts/new
  def new
    @clientworkout = Clientworkout.new
  end

  # GET /clientworkouts/1/edit
  def edit
  end

  # POST /clientworkouts
  # POST /clientworkouts.json
  def create
    @clientworkout = Clientworkout.new(clientworkout_params)

    respond_to do |format|
      if @clientworkout.save
        format.html { redirect_to @clientworkout, notice: 'Clientworkout was successfully created.' }
        format.json { render :show, status: :created, location: @clientworkout }
      else
        format.html { render :new }
        format.json { render json: @clientworkout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clientworkouts/1
  # PATCH/PUT /clientworkouts/1.json
  def update
    respond_to do |format|
      if @clientworkout.update(clientworkout_params)
        format.html { redirect_to @clientworkout, notice: 'Clientworkout was successfully updated.' }
        format.json { render :show, status: :ok, location: @clientworkout }
      else
        format.html { render :edit }
        format.json { render json: @clientworkout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clientworkouts/1
  # DELETE /clientworkouts/1.json
  def destroy
    @clientworkout.destroy
    respond_to do |format|
      format.html { redirect_to clientworkouts_url, notice: 'Clientworkout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  #find method lesson 5/6/2018
  def find
      puts params[:search_string]
      @results = Clientworkout.where(client_name: params[:search_string])
      #@results = Clientworkout.where('lower(client_name)=?' params[:search_string])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clientworkout
      @clientworkout = Clientworkout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clientworkout_params
      params.require(:clientworkout).permit(:client_name, :trainer, :duration_mins, :date_of_workout, :paid_amount)
    end
    
    
    
end
