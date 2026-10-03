{ pkgs, ... }:

{
   home.packages = with pkgs; [ 
      signal-desktop
      cine
      pinta
      eduvpn-client
      nautilus
      local-send
      obsidian
   ];
}
