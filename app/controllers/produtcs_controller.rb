class ProdutcsController < ApplicationController
  before_action :set_produtc, only: %i[ show edit update destroy ]

  # GET /produtcs or /produtcs.json
  def index
    @produtcs = Produtc.all
  end

  # GET /produtcs/1 or /produtcs/1.json
  def show
  end

  # GET /produtcs/new
  def new
    @produtc = Produtc.new
  end

  # GET /produtcs/1/edit
  def edit
  end

  # POST /produtcs or /produtcs.json
  def create
    @produtc = Produtc.new(produtc_params)

    respond_to do |format|
      if @produtc.save
        format.html { redirect_to produtc_url(@produtc), notice: "Produtc was successfully created." }
        format.json { render :show, status: :created, location: @produtc }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @produtc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /produtcs/1 or /produtcs/1.json
  def update
    respond_to do |format|
      if @produtc.update(produtc_params)
        format.html { redirect_to produtc_url(@produtc), notice: "Produtc was successfully updated." }
        format.json { render :show, status: :ok, location: @produtc }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @produtc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /produtcs/1 or /produtcs/1.json
  def destroy
    @produtc.destroy

    respond_to do |format|
      format.html { redirect_to produtcs_url, notice: "Produtc was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produtc
      @produtc = Produtc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def produtc_params
      params.require(:produtc).permit(:name)
    end
end
