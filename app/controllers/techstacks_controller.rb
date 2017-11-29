class TechstacksController < ApplicationController
  before_action :set_techstack, only: [:show, :edit, :update, :destroy]

  # GET /techstacks
  # GET /techstacks.json
  def index
    @techstacks = Techstack.all
  end

  # GET /techstacks/1
  # GET /techstacks/1.json
  def show
  end

  # GET /techstacks/new
  def new
    @techstack = Techstack.new
  end

  # GET /techstacks/1/edit
  def edit
  end

  # POST /techstacks
  # POST /techstacks.json
  def create
    @techstack = Techstack.new(techstack_params)

    respond_to do |format|
      if @techstack.save
        format.html { redirect_to @techstack, notice: 'Techstack was successfully created.' }
        format.json { render :show, status: :created, location: @techstack }
      else
        format.html { render :new }
        format.json { render json: @techstack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /techstacks/1
  # PATCH/PUT /techstacks/1.json
  def update
    respond_to do |format|
      if @techstack.update(techstack_params)
        format.html { redirect_to @techstack, notice: 'Techstack was successfully updated.' }
        format.json { render :show, status: :ok, location: @techstack }
      else
        format.html { render :edit }
        format.json { render json: @techstack.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /techstacks/1
  # DELETE /techstacks/1.json
  def destroy
    @techstack.destroy
    respond_to do |format|
      format.html { redirect_to techstacks_url, notice: 'Techstack was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_techstack
      @techstack = Techstack.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def techstack_params
      params.require(:techstack).permit(:company_name, :company_desc, :service)
    end
end
