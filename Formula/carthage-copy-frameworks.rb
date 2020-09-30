class CarthageCopyFrameworks < Formula
  include Language::Python::Virtualenv

  desc "Helper to sign and bundle frameworks built by Carthage"
  homepage "https://github.com/lvillani/carthage-copy-frameworks"
  url "https://github.com/lvillani/carthage-copy-frameworks/archive/v2.0.0.tar.gz"
  sha256 "4c985bbb3ca01b18d83ac9f76fbc169519a9944bb06d0a03cada4a228bbf6a08"
  head "https://github.com/lvillani/carthage-copy-frameworks.git"
  depends_on "python@3"

  def install
    virtualenv_install_with_resources(:using => "python@3")
  end
end
