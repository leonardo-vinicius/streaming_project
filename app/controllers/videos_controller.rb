class VideosController < ApplicationController
  before_action :set_video, only: [:show, :edit, :update, :destroy]

  # GET /videos
  def index
    @videos = Video.all

    render json: @videos
  end

  # GET /videos/:id
  def show
  end

  # GET /videos/new
  def new
    @video = Video.new
  end

  # POST /videos
  def create
    @video = Video.new(video_params)
    
    if @video.save
      redirect_to @video, notice: 'Video was successfully created.'
    else
      render :new
    end
  end

  # GET /videos/:id/edit
  def edit
  end

  # PATCH/PUT /videos/:id
  def update
    if @video.update(video_params)
      redirect_to @video, notice: 'Video was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /videos/:id
  def destroy
    @video.destroy
    redirect_to videos_url, notice: 'Video was successfully destroyed.'
  end

  private
    # Set video by ID for show, edit, update, destroy actions
    def set_video
      @video = Video.find(params[:id])
    end

    # Strong parameters for video creation and update
    def video_params
      params.require(:video).permit(:title, :description, :url)
    end
end
