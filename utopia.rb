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
    version '0.8.0'
    url "https://s3.amazonaws.com/aetna-utopia/#{version}/utopia_#{version}_darwin_amd64.tar.gz"
    sha1 '546ca6e09583f74c24cc0a0ac3c3d5c28693132b'
  end

  depends_on :arch => :intel

  def install
    bin.install "utopia_#{version}_darwin_amd64"
	bash_completion.install "utopia_autocomplete.sh"
	zsh_completion.install "utopia_autocomplete.zsh"
    system "mv", bin/"utopia_#{version}_darwin_amd64", bin/"utopia"
  end

  def caveats; <<-EOS.undent
  	To enable bash completions, you will need to add this to you .bashrc:
  		PROG=utopia source #{HOMEBREW_PREFIX}/etc/bash_completion.d/utopia_autocomplete.sh

	To enable zsh completion, you will need to add this your ./zshrc:
  		PROG=utopia source #{HOMEBREW_PREFIX}/share/zsh/site-functions/utopia_autocomplete.sh
	EOS
  end
end