{ pkgs, unstable, inputs, ... }:

{
  imports = [
    inputs.nixcord.homeModules.nixcord
  ];

  programs.nixcord = {
    enable = true;

    discord = {
      enable = true;
      branches = [ "stable" ];
      krisp.enable = true;
      openASAR.enable = false;
    };

    goofcord = {
      enable = true;
      clientMod = "vencord";
      settings.hardwareAcceleration = true;
    };

   
    config.plugins = {
      webScreenShareFixes.enable = true;
    };
  };
}