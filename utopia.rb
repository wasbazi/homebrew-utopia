require 'formula'

class Utopia < Formula
  homepage 'http://www.utopianapp.com'

  stable do
    version '0.7.2'
    @@file = "utopia_#{version}_darwin_amd64"
    url "https://s3.amazonaws.com/aetna-utopia/#{version}/utopia-deploy_#{version}_darwin_amd64.tar.gz"
    sha1 '0dd9c48ee767100259e5559166229e01b98c6fa5'
  end

  devel do
    version '0.7.2'
    url "https://s3.amazonaws.com/aetna-utopia/#{version}/utopia_#{version}_darwin_amd64.tar.gz"
    sha1 '67921d6cedc1319f259d9c7c35034b975cac7f06 utopia-deploy_0.7.2_darwin_amd64.tar.gz'
  end

  depends_on :arch => :intel

  def install
    bin.install "utopia-deploy_#{version}_darwin_amd64"
    system "mv", bin/"utopia-deploy_#{version}_darwin_amd64", bin/"utopia"
  end
end
