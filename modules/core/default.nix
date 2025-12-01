{ ... }:
{
  imports = [
    ./bootloader.nix
    ./flatpak.nix
    ./networking.nix
    ./nh.nix
    ./pipewire.nix
    ./security.nix
    ./services.nix
    ./system.nix
    ./user.nix
    ./wayland.nix
    ./xserver.nix
  ];
}
