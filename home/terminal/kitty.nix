{ ... }: 
{ 
  programs.kitty = { 
    enable = true;

    settings = {
      hide_window_decorations = true;
      background_opacity = 0.9;
    };
    extraConfig = ''
      include themes/noctalia.conf
    '';
  };
}
