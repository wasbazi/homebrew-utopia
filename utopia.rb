require 'formula'

class Utopia < Formula
  homepage 'http://www.utopianapp.com'

  stable do
	version '0.11.8'
	@@file = "utopia_#{version}_darwin_amd64"
	url "https://s3.amazonaws.com/aetna-utopia/#{version}/utopia_#{version}_darwin_amd64.tar.gz"
	sha1 'f52ff36949e3bafbf74c421e8dad86605a6b7ef7'
  end

  devel do
    version '0.8.0'
    url "https://s3.amazonaws.com/aetna-utopia/#{version}/utopia_#{version}_darwin_amd64.tar.gz"
    sha1 '8050a6e45952f9cf5c0cb74f88683d6c40cf3842'
  end

  depends_on :arch => :intel

  def install
	bin.install "utopia_#{version}_darwin_amd64"
	bash_completion.install "autocomplete/utopia_autocomplete.sh"
	zsh_completion.install "autocomplete/utopia_autocomplete.zsh"
	system "mv", bin/"utopia_#{version}_darwin_amd64", bin/"utopia"
  end

  def caveats; <<-EOS.undent
  To enable bash completions, you will need to add this to you .bashrc:
	PROG=utopia source #{HOMEBREW_PREFIX}/etc/bash_completion.d/utopia_autocomplete.sh

  To enable zsh completion, you will need to add this your ./zshrc:
	PROG=utopia source #{HOMEBREW_PREFIX}/share/zsh/site-functions/utopia_autocomplete.zsh
  [0;36m==>[0m[1;37m Completion[0m
  EOS
  end
end