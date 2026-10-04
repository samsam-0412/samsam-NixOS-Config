{ pkgs, unstable, ... }:

{
   home.packages = with pkgs; [ 
      unstable.signal-desktop
      unstable.proton-pass
      eduvpn-client
      nautilus
      localsend
      obsidian
      nextcloud-client
      cine
      pinta
   ];
}
