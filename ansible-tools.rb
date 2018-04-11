class AnsibleTools < Formula
  include Language::Python::Virtualenv

  desc 'Keyring integration and local execution wrappers for Ansible'
  homepage 'https://github.com/lvillani/ansible-tools'
  url 'https://pypi.python.org/packages/93/67/8592fa7ef690e513be1d124f873f7038b1f00a8f55b1ca18ce69d0e8e15b/ansible-tools-0.0.7.tar.gz'
  sha256 '38dd636c4fdced19633fef535f73274c4ff807da0b897070d957be6572a5bc3c'
  head 'https://github.com/lvillani/ansible-tools.git'

  depends_on 'ansible'

  resource "ansible-tools" do
    url "https://files.pythonhosted.org/packages/93/67/8592fa7ef690e513be1d124f873f7038b1f00a8f55b1ca18ce69d0e8e15b/ansible-tools-0.0.7.tar.gz"
    sha256 "38dd636c4fdced19633fef535f73274c4ff807da0b897070d957be6572a5bc3c"
  end

  resource "configparser" do
    url "https://files.pythonhosted.org/packages/7c/69/c2ce7e91c89dc073eb1aa74c0621c3eefbffe8216b3f9af9d3885265c01c/configparser-3.5.0.tar.gz"
    sha256 "5308b47021bc2340965c371f0f058cc6971a04502638d4244225c49d80db273a"
  end

  resource "entrypoints" do
    url "https://files.pythonhosted.org/packages/27/e8/607697e6ab8a961fc0b141a97ea4ce72cd9c9e264adeb0669f6d194aa626/entrypoints-0.2.3.tar.gz"
    sha256 "d2d587dde06f99545fb13a383d2cd336a8ff1f359c5839ce3a64c917d10c029f"
  end

  resource "keyring" do
    url "https://files.pythonhosted.org/packages/b9/f5/26c0d2195b2d3c2f3ecf11eff0903d5eca3a53d3999da2a7d4a2035cc769/keyring-12.0.1.tar.gz"
    sha256 "846c9c709ee1203bac5444abec19b5228f4601377686f33cba672aa0ba313abd"
  end

  resource "passlib" do
    url "https://files.pythonhosted.org/packages/25/4b/6fbfc66aabb3017cd8c3bd97b37f769d7503ead2899bf76e570eb91270de/passlib-1.7.1.tar.gz"
    sha256 "3d948f64138c25633613f303bcc471126eae67c04d5e3f6b7b8ce6242f8653e0"
  end

  def install
    virtualenv_install_with_resources
  end
end
