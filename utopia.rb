require 'formula'

class Utopia < Formula
  homepage 'http://www.utopianapp.com'

    stable do
  version '0.0.1'
  @@file = "utopia_#{version}_darwin_amd64"
  url "https://s3.amazonaws.com/aetna-utopia/#{version}/utopia_#{version}_darwin_amd64.tar.gz"
  sha1 '723b8a59e34b0289884b7880b7b6a4e53e2c6ac9'
  end

  
  devel do
    version 'devel'
    url "https://s3.amazonaws.com/aetna-utopia/devel/utopia_#{version}_darwin_amd64.tar.gz"
    sha1 'd69b63e52154ddd97300b64ee2c4ccecddac37b5'
  end

  depends_on :arch => :intel

  def install
    bin.install "utopia_#{version}_darwin_amd64"
    system "mv", bin/"utopia_#{version}_darwin_amd64", bin/"utopia"
  end
end