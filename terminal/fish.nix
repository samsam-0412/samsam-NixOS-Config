{ pkgs,... }: 
{
 # grc package for grc plugin 
  home.packages = [
    pkgs.grc
  ];

  programs.fish = { 
    enable = true;

    interactiveShellInit = ''
      set fish_greeting # Disable greeting
    '';
    
    shellAliases = {
      devrust = "nix develop ~/.config/home-manager/devTools#rust";
      devjava = "nix develop ~/.config/home-manager/devTools#java";
    };
    plugins = [
      { 
        name = "grc"; 
	      src = pkgs.fishPlugins.grc.src; 
      }
      {
        name = "z";
        src = pkgs.fetchFromGitHub {
          owner = "jethrokuan";
          repo = "z";
          rev = "e0e1b9dfdba362f8ab1ae8c1afc7ccf62b89f7eb";
          sha256 = "0dbnir6jbwjpjalz14snzd3cgdysgcs3raznsijd6savad3qhijc";
        };
      }
    ];
  };
}
