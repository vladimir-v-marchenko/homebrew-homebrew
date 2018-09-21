require 'formula'

class Tinyca2 < Formula
  homepage 'http://www.sm-zone.net/'
  url 'https://raw.githubusercontent.com/vladimir-v-marchenko/homebrew-homebrew/master/distfiles/tinyca2-0.7.5-3.zip'
  sha1 '36a59654a16390dabe278ae4c6ac6b4cc5cb5806'

  depends_on :x11
  depends_on 'Gtk2' => :perl

  def install
    inreplace 'tinyca2' do |s|
      s.gsub! /.\/lib/, lib
      s.gsub! /\/bin\/tar/, '/usr/bin/tar'
      s.gsub! /.\/templates/, share
    end

    lib.install Dir['lib/*']
    share.install Dir['templates/*']
    bin.install "tinyca2"
  end

  def test
    system "perl -cX #{bin}/tinyca2"
  end
end
