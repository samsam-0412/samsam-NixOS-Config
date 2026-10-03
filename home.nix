{ lib, pkgs, inputs,... }:
{
    imports = [
      ./home
    ];

    home = {
      packages = with pkgs; [      
    ];

    username = "samsam";
    homeDirectory = "/home/samsam";

    stateVersion = "26.05";
  };
  home.sessionVariables = {
    QT_QPA_PLATFORMTHEME = "qt6ct";
    XCURSOR_THEME = "Bibata-Modern-Classic";
  };
}
