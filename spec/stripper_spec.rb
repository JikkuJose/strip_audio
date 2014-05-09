require_relative 'spec_helper'

module StripAudio

  describe Stripper do

    subject { Stripper.new( video: 'file.mp4', format: 'mp3' ) }

    it "#strip" do
      should respond_to(:strip)
    end

  end

end
