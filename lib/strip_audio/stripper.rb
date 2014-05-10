require "strip_audio/exceptions"

module StripAudio

  class Stripper

    @@options = {format: "mp3", bitrate: "160k"}

    def initialize options
      @@options.merge(options)

      doctor
    end

    def strip video_file

      begin
        audio_file_exists?( video_file )
      rescue AudioFileAlreadyExists => e
        puts e.message
        exit
      end

      o = `ffmpeg -i '#{video_file}' -ab #{@@options[:bitrate]} -ac 2 -ar 44100 -vn '#{audio_file(video_file)}' 2>&1`
      begin
        command_output o
      rescue InvalidSourceFile => e
        puts e.message
      end
    end

    private

    def command_output output
      case output
      when /Invalid data found/
        raise InvalidSourceFile, "Source file doesn't seem to be valid."
      end

    end

    def doctor
      ffmpeg_exists?
    end

    def ffmpeg_exists?
      if `which ffmpeg` == ""
        raise FfmpegMissing, "ffmpeg is missing, please install and try again."  
      end
    end

    def audio_file_exists? video_file
      if File.file?( audio_file(video_file) )
        raise AudioFileAlreadyExists, "#{audio_file(video_file)} already exists. Perhaps you stripped the file already?"
      end
    end

    def audio_file video_file
      "#{File.basename(video_file, ".*")}.#{@@options[:format]}"
    end

  end

end
