module StripAudio

class FfmpegMissing < StandardError
end

class FfmpegEncodingError < StandardError
end

class InvalidSourceFile < StandardError
end

class AudioFileAlreadyExists < StandardError
end

end
