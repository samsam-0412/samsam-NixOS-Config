{
  inputs = {
    nixpkgs = { url = "github:NixOS/nixpkgs/nixos-26.05";};
    nixpkgs-unstable = { url = "github:NixOS/nixpkgs/nixos-unstable";};
    home-manager = { url = "github:nix-community/home-manager/release-26.05"; inputs.nixpkgs.follows = "nixpkgs";};
    helium-flake = { url = "github:oxcl/nix-flake-helium-browser"; inputs.nixpkgs.follows = "nixpkgs";};
    noctalia = { url = "github:noctalia-dev/noctalia"; inputs.nixpkgs.follows = "nixpkgs";};
    niri = { url = "github:sodiboo/niri-flake"; inputs.nixpkgs.follows = "nixpkgs";};
  };

  outputs = { nixpkgs, home-manager, ... }@inputs:
    let
      lib = nixpkgs.lib;
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
      homeConfigurations = {
        samsam = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          extraSpecialArgs = { inherit inputs unstable; };

          modules = [
	          ./home.nix
            inputs.noctalia.homeModules.default
            inputs.niri.homeModules.niri
            inputs.helium-flake.homeModules.default
	       ];
        };
      };
    };
}
