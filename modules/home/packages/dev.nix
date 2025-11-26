{ pkgs, ... }:
{
  home.packages = with pkgs; [
    ## Lsp
    nixd # nix

    ## formatting
    shfmt
    treefmt
    nixfmt-rfc-style

    ## C / C++
    gcc
    gdb
    gef
    cmake
    gnumake
    valgrind
    llvmPackages_20.clang-tools

    ## Python
    python3
    python313Packages.python
  ];
}
