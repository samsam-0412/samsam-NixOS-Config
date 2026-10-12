{ ... }:

{
  services = {
    upower.enable = true;
    openssh.enable = true;
    samba.enable = true;
    gvfs.enable = true;
    avahi = {
      enable = true;
      nssmdns4 = true;
      openFirewall = true;
    };
    printing.enable = true;
    pulseaudio.enable = false;
    power-profiles-daemon.enable = false;
  };
  security.rtkit.enable = true;
  services.xserver.enable = true;
  services.xserver.xkb = {
    layout = "de";
    variant = "";
  };
}