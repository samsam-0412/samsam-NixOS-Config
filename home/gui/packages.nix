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
      totem
      pinta
      unstable.firefox 
      blender
      geogebra6
      evince
      loupe
   ];
}
