{ pkgs,... }: 
{
  home.packages = [
    pkgs.grc
  ];

  programs.fish = { 
    enable = true;

    interactiveShellInit = ''
      set fish_greeting # Disable greeting
    '';
    
    shellAliases = {
      devrust = "nix develop /home/samsam/.config/home-manager/devTools/flake.nix#rust";
      devjava = "nix develop /home/samsam/.config/home-manager/devTools/flake.nix#java";
      devcpp = "nix develop /home/samsam/.config/home-manager/devTools/flake.nix#cpp";
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
