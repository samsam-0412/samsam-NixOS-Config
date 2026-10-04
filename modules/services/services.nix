{ ... }:
#put these into more files in the future
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

}