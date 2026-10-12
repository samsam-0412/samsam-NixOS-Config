{ ... }:

{
  networking.firewall = {
    enable = true;
    allowedTCPPorts = [ 53317 8080 3333 ];
    allowedUDPPortRanges = [
      { from = 53317; to = 53317; }
      { from = 8080; to = 8080; }
    ];
  };
}