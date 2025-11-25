{ ... }:
{
  imports = [
    ./networking.nix
    ./pipewire.nix
    ./security.nix
    ./services.nix
    ./system.nix
    ./user.nix
    ./xserver.nix
  ];
}
