{
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-26.05";
    helium = {url = "github:oxcl/nix-flake-helium-browser"; inputs.nixpkgs.follows = "nixpkgs";};
    spicetify-nix = { url = "github:Gerg-L/spicetify-nix"; inputs.nixpkgs.follows = "nixpkgs"; };
    noctalia = {url = "github:noctalia-dev/noctalia"; inputs.nixpkgs.follows = "nixpkgs";};
    niri = {url = "github:sodiboo/niri-flake"; inputs.nixpkgs.follows = "nixpkgs";};
  };

  outputs = inputs: {
    inherit inputs; 
  };
}
