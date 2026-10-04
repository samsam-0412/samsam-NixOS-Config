{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    papirus-icon-theme
    bibata-cursors
    nwg-look
  	qt6Packages.qt6ct
  ];
}
