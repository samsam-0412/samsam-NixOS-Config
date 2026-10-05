{ pkgs, ... }:

{
  networking.hostName = "nixos-Laptop";
  networking.wireless.enable = true;
  networking.networkmanager = {
    enable = true;

    plugins = with pkgs; [
      networkmanager-openvpn
    ];
  };

}