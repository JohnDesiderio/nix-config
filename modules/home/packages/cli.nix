{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # Better core utils
    duf
    eza
    fd
    gping
    man-pages

    # Tools / useful cli
    tdf

    # Monitoring
    htop

    # Utilities
    file
  ];
}
