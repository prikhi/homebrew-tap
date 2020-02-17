class AnsibleTools < Formula
  include Language::Python::Virtualenv

  desc "Keyring integration and local execution wrappers for Ansible"
  homepage "https://github.com/lvillani/ansible-tools"
  url "https://files.pythonhosted.org/packages/99/0c/f7c0801a7298e73ca33407314c92e0362dd36c06bc1a2d1082550d82cf36/ansible-tools-0.1.2.tar.gz"
  sha256 "24115aefbdc075ab458143bdcfadce2bd8de7497020cb94d662d77635f96dfdd"

  depends_on "ansible"
  depends_on "python"

  resource "importlib-metadata" do
    url "https://files.pythonhosted.org/packages/0d/e4/638f3bde506b86f62235c595073066e7b8472fc9ee2b8c6491347f31d726/importlib_metadata-1.5.0.tar.gz"
    sha256 "06f5b3a99029c7134207dd882428a66992a9de2bef7c2b699b5641f9886c3302"
  end

  resource "keyring" do
    url "https://files.pythonhosted.org/packages/7e/70/399b955e814380568c1f2e98145d37f0467b79531766b687bc27eb873a0a/keyring-21.1.0.tar.gz"
    sha256 "1f393f7466314068961c7e1d508120c092bd71fa54e3d93b76180b526d4abc56"
  end

  resource "passlib" do
    url "https://files.pythonhosted.org/packages/6d/6b/4bfca0c13506535289b58f9c9761d20f56ed89439bfe6b8e07416ce58ee1/passlib-1.7.2.tar.gz"
    sha256 "8d666cef936198bc2ab47ee9b0410c94adf2ba798e5a84bf220be079ae7ab6a8"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/21/9f/b251f7f8a76dec1d6651be194dfba8fb8d7781d10ab3987190de8391d08e/six-1.14.0.tar.gz"
    sha256 "236bdbdce46e6e6a3d61a337c0f8b763ca1e8717c03b369e87a7ec7ce1319c0a"
  end

  resource "zipp" do
    url "https://files.pythonhosted.org/packages/60/85/668bca4a9ef474ca634c993e768f12bd99af1f06bb90bb2655bc538a967e/zipp-2.2.0.tar.gz"
    sha256 "5c56e330306215cd3553342cfafc73dda2c60792384117893f3a83f8a1209f50"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end
end
