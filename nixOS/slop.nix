{ config, pkgs, ... }:

let
  driftwm-flake = builtins.getFlake "github:malbiruk/driftwm";
in
{
  imports = [
    driftwm-flake.nixosModules.default
  ];

  programs.driftwm.enable = true;
}
