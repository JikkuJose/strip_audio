require "strip_audio/exceptions"

module StripAudio

  class Stripper

    @@options = {format: "mp3", bitrate: "160k"}

    def initialize options
      @@options.merge(options)

      @video_file = @@options[:video]
      @format = @@options[:format]
      @audio_file = audio_file

      doctor
    end

    def strip
      output = `ffmpeg -i #{@video_file} -ab 160k -ac 2 -ar 44100 -vn #{@audio_file}`
    end

    private

    def doctor
      ffmpeg_exists? && audio_file_exists?
    end

    def ffmpeg_exists?
      raise FfmpegMissing, "ffmpeg is missing, please install and try again."  if `which ffmpeg` == ""
    end

    def audio_file_exists?
      raise AudioFileAlreadyExists, "#{audio_file} exists; perhaps you stripped the file already?" if File.file?( audio_file )
    end

    def audio_file
      "#{File.basename(@video_file, ".*")}.#{@format}"
    end

  end

end
