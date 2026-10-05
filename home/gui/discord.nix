{ ... }:

{
  programs.vesktop = {
    enable = true;
    settings = {
      discordBranch = "stable";
      hardwareAcceleration = true;
      minimizeToTray = false;
    };
  };
}
