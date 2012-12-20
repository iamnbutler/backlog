class AnimeController < ApplicationController
  # GET /anime
  # GET /anime.json
  def index
    @anime = Anime.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @anime }
    end
  end

  # GET /anime/1
  # GET /anime/1.json
  def show
    @anime = Anime.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @anime }
    end
  end

  # GET /anime/new
  # GET /anime/new.json
  def new
    @anime = Anime.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @anime }
    end
  end

  # GET /anime/1/edit
  def edit
    @anime = Anime.find(params[:id])
  end

  # POST /anime
  # POST /anime.json
  def create
    @anime = Anime.new(params[:anime])

    respond_to do |format|
      if @anime.save
        format.html { redirect_to @anime, notice: 'Anime was successfully created.' }
        format.json { render json: @anime, status: :created, location: @anime }
      else
        format.html { render action: "new" }
        format.json { render json: @anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /anime/1
  # PUT /anime/1.json
  def update
    @anime = Anime.find(params[:id])

    respond_to do |format|
      if @anime.update_attributes(params[:anime])
        format.html { redirect_to @anime, notice: 'Anime was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @anime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anime/1
  # DELETE /anime/1.json
  def destroy
    @anime = Anime.find(params[:id])
    @anime.destroy

    respond_to do |format|
      format.html { redirect_to anime_index_url }
      format.json { head :no_content }
    end
  end

  # tagged controller, for use with acts_as_taggable_on
  def tagged
      if params[:tag].present? 
      @anime = Anime.tagged_with(params[:tag])
    else 
      @anime = Anime.postall
    end  
  end
end
