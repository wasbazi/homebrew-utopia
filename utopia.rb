require 'formula'

class Utopia < Formula
  homepage 'http://www.utopianapp.com'

  stable do
	version '0.11.8'
	@@file = "utopia_#{version}_darwin_amd64"
	url "https://s3.amazonaws.com/aetna-utopia/#{version}/utopia_#{version}_darwin_amd64.tar.gz"
	sha1 '64fe959272298f177ad85d50543929941e97d216'
  end

  devel do
    version '0.8.0'
    url "https://s3.amazonaws.com/aetna-utopia/#{version}/utopia_#{version}_darwin_amd64.tar.gz"
    sha1 '8050a6e45952f9cf5c0cb74f88683d6c40cf3842'
  end

  depends_on :arch => :intel

  def install
	bin.install "utopia_#{version}_darwin_amd64"
	system "mv", bin/"utopia_#{version}_darwin_amd64", bin/"utopia"
  end
end