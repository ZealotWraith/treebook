class SttusController < ApplicationController
  before_action :set_sttu, only: [:show, :edit, :update, :destroy]

  # GET /sttus
  # GET /sttus.json
  def index
    @sttus = Sttu.all
  end

  # GET /sttus/1
  # GET /sttus/1.json
  def show
  end

  # GET /sttus/new
  def new
    @sttu = Sttu.new
  end

  # GET /sttus/1/edit
  def edit
  end

  # POST /sttus
  # POST /sttus.json
  def create
    @sttu = Sttu.new(sttu_params)

    respond_to do |format|
      if @sttu.save
        format.html { redirect_to @sttu, notice: 'Sttu was successfully created.' }
        format.json { render :show, status: :created, location: @sttu }
      else
        format.html { render :new }
        format.json { render json: @sttu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sttus/1
  # PATCH/PUT /sttus/1.json
  def update
    respond_to do |format|
      if @sttu.update(sttu_params)
        format.html { redirect_to @sttu, notice: 'Sttu was successfully updated.' }
        format.json { render :show, status: :ok, location: @sttu }
      else
        format.html { render :edit }
        format.json { render json: @sttu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sttus/1
  # DELETE /sttus/1.json
  def destroy
    @sttu.destroy
    respond_to do |format|
      format.html { redirect_to sttus_url, notice: 'Sttu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sttu
      @sttu = Sttu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sttu_params
      params.require(:sttu).permit(:name, :content)
    end
end
