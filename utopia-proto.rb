require 'formula'

class UtopiaProto < Formula
  homepage 'http://www.utopianapp.com'

  stable do
	version '0.0.2'
	@@file = "utopia-proto_#{version}_darwin_amd64"
	url "https://s3.amazonaws.com/aetna-utopia/utopia-proto/#{version}/utopia-proto_#{version}_darwin_amd64.tar.gz"
	sha1 '13ee99dcc4441102cd430ebf0aa281ee2bb660d3'
  end

  devel do
    version '0.0.0'
    url "https://s3.amazonaws.com/aetna-utopia/utopia-proto/#{version}/utopia-proto_#{version}_darwin_amd64.tar.gz"
    sha1 '8050a6e45952f9cf5c0cb74f88683d6c40cf3842'
  end

  depends_on :arch => :intel

  def install
	bin.install "utopia-proto_#{version}_darwin_amd64"
	system "mv", bin/"utopia-proto_#{version}_darwin_amd64", bin/"utopia-proto"
  end
end