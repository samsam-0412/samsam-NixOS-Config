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
      unstable.firefox
      blender
      geogebra6
      #discord
      #steam not working maybe fix later
   ];
}
