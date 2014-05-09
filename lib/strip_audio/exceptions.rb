module StripAudio

class FfmpegMissing < StandardError
end

class FfmpegEncodingError < StandardError
end

class AudioFileAlreadyExists < StandardError
end

end
