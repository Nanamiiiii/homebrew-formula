class Neovim < Formula
  desc "Ambitious Vim-fork focused on extensibility and agility"
  homepage "https://neovim.io/"
  license "Apache-2.0"

  head "https://github.com/neovim/neovim.git", branch: "master"

  depends_on "ninja" => :build
  depends_on "cmake" => :build
  depends_on "gettext"
  depends_on "curl"

  uses_from_macos "unzip"

  conflicts_with "neovim"

  def install
    system "make CMAKE_BUILD_TYPE=RelWithDebInfo CMAKE_INSTALL_PREFIX=#{prefix}"
    system "make install"
  end

end
