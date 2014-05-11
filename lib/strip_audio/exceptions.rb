module StripAudio

  class FfmpegMissing < StandardError; end

  class FfmpegEncodingError < StandardError; end

  class InvalidSourceFile < StandardError; end

  class AudioFileAlreadyExists < StandardError; end

  class InvalidArguments < StandardError; end

end
