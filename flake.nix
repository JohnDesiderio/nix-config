{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, self, ... } @ inputs: 
  let
    # pkgs = nixpkgs.legacyPackages.x86_64-linux;
    username = "johnd";
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      config = {
        allowUnfree = true;
      };
    };
  in
  {
    nixosConfigurations = {
      # Rewrite of the basic flake, want to migrate away from this
      nixos = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs system; };
	modules = [
          ./configuration.nix
	];
      };

      desktop = nixpkgs.lib.nixosSystem {
        inherit system;
	modules = [ ./hosts/desktop ];
	specialArgs = {
          host = "nixos";
	  inherit self inputs username;
	};
      };

    };
  };
}
