class AnsibleTools < Formula
  include Language::Python::Virtualenv

  desc 'Keyring integration and local execution wrappers for Ansible'
  homepage 'https://github.com/lvillani/ansible-tools'
  url 'https://pypi.python.org/packages/93/67/8592fa7ef690e513be1d124f873f7038b1f00a8f55b1ca18ce69d0e8e15b/ansible-tools-0.0.7.tar.gz'
  sha256 '38dd636c4fdced19633fef535f73274c4ff807da0b897070d957be6572a5bc3c'
  head 'https://github.com/lvillani/ansible-tools.git'

  depends_on 'ansible'

  def install
    virtualenv_install_with_resources
  end
end
