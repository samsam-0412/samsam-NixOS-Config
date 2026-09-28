{ lib, pkgs, inputs,... }:
{
    imports = [
      ./DE/noctalia.nix
      ./DE/niri.nix
    ];

    home = {
      packages = with pkgs; [      
    ];

    username = "samsam";
    homeDirectory = "/home/samsam";

    stateVersion = "26.05";
  };
}
