require 'formula'

class Tinyca2 < Formula
  desc "TinyCA is a simple graphical userinterface written in Perl/Gtk to manage a small CA (Certification Authority). TinyCA works as a frontend for openssl."
  homepage 'http://www.sm-zone.net/'
  url 'https://raw.githubusercontent.com/vladimir-v-marchenko/homebrew-homebrew/master/distfiles/tinyca2-0.7.5-3.zip'
  sha256 "5f11f0e8b141679a264ee97ead0d5eb8e115c54c18d57efb1796192cd002476e" 

  depends_on :x11

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
