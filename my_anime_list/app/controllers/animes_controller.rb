class AnimesController < ApplicationController
  # GET /animes
  # GET /animes.json
  def index

      @animes = current_user.animes.all unless current_user.nil?

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @animes }
      end
  end

  # GET /animes/1
  # GET /animes/1.json
  def show
    @anime = current_user.animes.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @anime }
    end
  end

  # GET /animes/new
  # GET /animes/new.json
  def new
    @anime = current_user.animes.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @anime }
    end
  end

  # GET /animes/1/edit
  def edit
    @anime = current_user.animes.find(params[:id])
  end

  # POST /animes
  # POST /animes.json
  def create
    @anime = current_user.animes.new(params[:anime])

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

  # PUT /animes/1
  # PUT /animes/1.json
  def update
    @anime = current_user.animes.find(params[:id])

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

  # DELETE /animes/1
  # DELETE /animes/1.json
  def destroy
    @anime = current_user.animes.find(params[:id])
    @anime.destroy

    respond_to do |format|
      format.html { redirect_to animes_url }
      format.json { head :no_content }
    end
  end
end
