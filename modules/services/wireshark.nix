{ config, pkgs, ... }:

{
  programs.wireshark = {
    enable = true;
    package = pkgs.wireshark;
  };

  users.users.samsam = {
    isNormalUser = true;
    extraGroups = [ "wireshark" ]; 
  };
}