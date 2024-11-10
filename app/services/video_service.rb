class VideoService
  def initialize(params)
    @params = params
  end

  def call
    video = Video.create(@params)

    if video.save
      return video
    else
      raise "Erro ao criar video: #{video.errors.full_messages.join(', ')}"
    end
  end
end
