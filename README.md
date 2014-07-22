# strip_audio

Strips audio from video files.

## Installation

Install it yourself as:

    $ gem install strip_audio

## Dependency

* [ffmpeg](http://www.ffmpeg.org/)

### Mac OSX

Install using [homebrew](http://brew.sh/): 

    $ brew install ffmpeg

### Linux

Install using [aptitude](https://wiki.debian.org/Aptitude):

    $ sudo apt-get install ffmpeg

## Usage

To strip audio from file.mp4 to file.mp3:

    $ strip_audio file.mp4

## Todo

* Progress bar denoting status.
* Batch processing of all files from location.

## Contributing

1. Fork it ( https://github.com/jikkujose/strip_audio/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
