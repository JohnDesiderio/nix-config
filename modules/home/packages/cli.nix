{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # Tools / useful cli
    tdf

    # Monitoring
    htop
  ];
}
