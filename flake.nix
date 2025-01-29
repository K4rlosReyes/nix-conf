{
  description = "KR nixos config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { nixpkgs, ... }@inputs: {
    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
	modules = [
          # Main NixOS configuration file
	  ./configuration.nix
	];
      };
    };
  };
}
