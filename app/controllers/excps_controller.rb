class ExcpsController < ApplicationController
  before_action :set_excp, only: [:show, :edit, :update, :destroy]

  # GET /excps
  # GET /excps.json
  def index
    @excps = Excp.all
  end

  # GET /excps/1
  # GET /excps/1.json
  def show
  end

  # GET /excps/new
  def new
    @excp = Excp.new
  end

  # GET /excps/1/edit
  def edit
  end

  # POST /excps
  # POST /excps.json
  def create
    @excp = Excp.new(excp_params)

    respond_to do |format|
      if @excp.save
        format.html { redirect_to @excp, notice: 'Excp was successfully created.' }
        format.json { render :show, status: :created, location: @excp }
      else
        format.html { render :new }
        format.json { render json: @excp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /excps/1
  # PATCH/PUT /excps/1.json
  def update
    respond_to do |format|
      if @excp.update(excp_params)
        format.html { redirect_to @excp, notice: 'Excp was successfully updated.' }
        format.json { render :show, status: :ok, location: @excp }
      else
        format.html { render :edit }
        format.json { render json: @excp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /excps/1
  # DELETE /excps/1.json
  def destroy
    @excp.destroy
    respond_to do |format|
      format.html { redirect_to excps_url, notice: 'Excp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_excp
      @excp = Excp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def excp_params
      params.require(:excp).permit(:fixed, :date_fixed, :excp_thread, :excp_trace, :notes, :user_id)
    end
end
