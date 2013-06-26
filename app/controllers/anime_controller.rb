class AnimeController < ApplicationController
  before_action :set_anime, only: [:show, :edit, :update, :destroy]

  # GET /anime
  # GET /anime.json
  def index
    @anime = Anime.all
  end

  # GET /anime/1
  # GET /anime/1.json
  def show
  end

  # GET /anime/new
  def new
    @anime = Anime.new
  end

  # GET /anime/1/edit
  def edit
  end

  # POST /anime
  # POST /anime.json
  def create
    @anime = Anime.new(anime_params)

    respond_to do |format|
      if @anime.save
        format.html { redirect_to @anime, notice: 'Anime was successfully created.' }
        format.json { render action: 'show', status: :created, location: @anime }
      else
        format.html { render action: 'new' }
        format.json { render json: @anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anime/1
  # PATCH/PUT /anime/1.json
  def update
    respond_to do |format|
      if @anime.update(anime_params)
        format.html { redirect_to @anime, notice: 'Anime was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anime/1
  # DELETE /anime/1.json
  def destroy
    @anime.destroy
    respond_to do |format|
      format.html { redirect_to anime_index_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anime
      @anime = Anime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anime_params
      params.require(:anime).permit(:name, :year, :description)
    end
end
