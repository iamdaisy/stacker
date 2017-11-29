class StackersController < ApplicationController
  before_action :set_stacker, only: [:show, :edit, :update, :destroy]

  # GET /stackers
  # GET /stackers.json
  def index
    @stackers = Stacker.all
  end

  # GET /stackers/1
  # GET /stackers/1.json
  def show
  end

  # GET /stackers/new
  def new
    @stacker = Stacker.new
  end

  # GET /stackers/1/edit
  def edit
  end

  # POST /stackers
  # POST /stackers.json
  def create
    @stacker = Stacker.new(stacker_params)

    respond_to do |format|
      if @stacker.save
        format.html { redirect_to @stacker, notice: 'Stacker was successfully created.' }
        format.json { render :show, status: :created, location: @stacker }
      else
        format.html { render :new }
        format.json { render json: @stacker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stackers/1
  # PATCH/PUT /stackers/1.json
  def update
    respond_to do |format|
      if @stacker.update(stacker_params)
        format.html { redirect_to @stacker, notice: 'Stacker was successfully updated.' }
        format.json { render :show, status: :ok, location: @stacker }
      else
        format.html { render :edit }
        format.json { render json: @stacker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stackers/1
  # DELETE /stackers/1.json
  def destroy
    @stacker.destroy
    respond_to do |format|
      format.html { redirect_to stackers_url, notice: 'Stacker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stacker
      @stacker = Stacker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stacker_params
      params.fetch(:stacker, {})
    end
end
