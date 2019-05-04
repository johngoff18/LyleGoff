class BlenderArtsController < ApplicationController
  http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]
  before_action :set_blender_art, only: [:show, :edit, :update, :destroy]

  # GET /blender_arts
  # GET /blender_arts.json
  def index
    @blender_arts = BlenderArt.all
  end

  # GET /blender_arts/1
  # GET /blender_arts/1.json
  def show
  end

  # GET /blender_arts/new
  def new
    @blender_art = BlenderArt.new
  end

  # GET /blender_arts/1/edit
  def edit
  end

  # POST /blender_arts
  # POST /blender_arts.json
  def create
    @blender_art = BlenderArt.new(blender_art_params)

    respond_to do |format|
      if @blender_art.save
        format.html { redirect_to @blender_art, notice: 'Blender art was successfully created.' }
        format.json { render :show, status: :created, location: @blender_art }
      else
        format.html { render :new }
        format.json { render json: @blender_art.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blender_arts/1
  # PATCH/PUT /blender_arts/1.json
  def update
    respond_to do |format|
      if @blender_art.update(blender_art_params)
        format.html { redirect_to @blender_art, notice: 'Blender art was successfully updated.' }
        format.json { render :show, status: :ok, location: @blender_art }
      else
        format.html { render :edit }
        format.json { render json: @blender_art.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blender_arts/1
  # DELETE /blender_arts/1.json
  def destroy
    @blender_art.destroy
    respond_to do |format|
      format.html { redirect_to blender_arts_url, notice: 'Blender art was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blender_art
      @blender_art = BlenderArt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blender_art_params
      params.require(:blender_art).permit(:name, :description, :image_url, :link)
    end
end
