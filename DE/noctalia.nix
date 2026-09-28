{ ... }:

{
  programs.noctalia = {
    enable = true;
  };

  xdg.configFile."noctalia/config.toml".text = ''
    
  '';
}
