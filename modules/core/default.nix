{ ... }:
{
  imports = [
    ./configuration.nix
    ./networking.nix
    ./pipewire.nix
    ./services.nix
    ./system.nix
    ./xserver.nix
    ./user.nix
  ];
}
