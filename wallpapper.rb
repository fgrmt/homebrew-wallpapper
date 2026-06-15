require 'formula'

class Wallpapper < Formula
  homepage 'https://github.com/fgrmt/wallpapper'
  url 'https://github.com/fgrmt/wallpapper/archive/1.7.5.tar.gz'
  sha256 '15ff94899e6c3824a2dceea8bfe948c5faadec6f58e8b073021ee910f929d038'

  head 'https://github.com/fgrmt/wallpapper.git'

  depends_on :xcode => :build

  def install
    system 'swift', 'build', '--disable-sandbox', '--configuration', 'release'
    bin.install './.build/release/wallpapper'
    bin.install './.build/release/wallpapper-exif'
  end
end
