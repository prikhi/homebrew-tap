class CarthageCopyFrameworks < Formula
  include Language::Python::Virtualenv

  desc "Helper to sign and bundle all frameworks built by Carthage"
  homepage "https://github.com/lvillani/carthage-copy-frameworks"
  url "https://github.com/lvillani/carthage-copy-frameworks/archive/v1.1.0.tar.gz"
  sha256 "870415b2fe8555418c073a93617ef8a3c78c62831bc811ab086cc381f84e40c6"
  head "https://github.com/lvillani/carthage-copy-frameworks.git"

  def install
    virtualenv_install_with_resources
  end
end
