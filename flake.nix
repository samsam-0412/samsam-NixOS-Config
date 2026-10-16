{
  inputs = {
    nixpkgs = {url = "github:NixOS/nixpkgs/nixos-26.05";};
    nixpkgs-unstable = {url = "github:NixOS/nixpkgs/nixos-unstable";};
    home-manager = {url = "github:nix-community/home-manager/release-26.05";inputs.nixpkgs.follows = "nixpkgs";};
    helium-flake = {url = "github:oxcl/nix-flake-helium-browser";inputs.nixpkgs.follows = "nixpkgs";};
    noctalia = {url = "github:noctalia-dev/noctalia";inputs.nixpkgs.follows = "nixpkgs";};
    niri = {url = "github:sodiboo/niri-flake";inputs.nixpkgs.follows = "nixpkgs";};
    nixcord = {url = "github:4evy/nixcord";inputs.nixpkgs.follows = "nixpkgs";};
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    ...
  }@inputs:

  let
    system = "x86_64-linux";

    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };

    unstable = import inputs.nixpkgs-unstable {
      inherit system;
      config.allowUnfree = true;
    };
  in {
    nixosConfigurations.samsam = nixpkgs.lib.nixosSystem {
      inherit system;

      specialArgs = {
        inherit inputs unstable;
      };

      modules = [
        /etc/nixos/configuration.nix
        ./modules/modules.nix
        home-manager.nixosModules.home-manager {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          
          home-manager.extraSpecialArgs = {
            inherit inputs unstable;
          };

          home-manager.users.samsam = {
            imports = [
              ./home/home.nix
              inputs.noctalia.homeModules.default
              inputs.niri.homeModules.niri
              inputs.helium-flake.homeModules.default
            ];
          };
        }
      ];
    };
  };
}

