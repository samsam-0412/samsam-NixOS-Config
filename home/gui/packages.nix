{ pkgs, unstable, ... }:

{
   home.packages = with pkgs; [ 
      unstable.signal-desktop
      unstable.proton-pass
      unstable.fetch
      eduvpn-client
      nautilus
      localsend
      obsidian
      nextcloud-client
      cine
      pinta
      unstable.firefox
      wireshark
   ];
}
