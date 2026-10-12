{ pkgs,... }: 
{
  home.packages = [
    pkgs.grc
  ];

  programs.fish = { 
    enable = true;

    interactiveShellInit = ''
      set fish_greeting
      set -e SSH_ASKPASS
      set -e SSH_ASKPASS_REQUIRE
    '';
    
    shellAliases = {
      devrust = "nix develop /home/samsam/.config/home-manager/home/dev/flake.nix#rust";
      devcpp = "nix develop /home/samsam/.config/home-manager/home/dev/flake.nix#cpp";
      devgo = "nix develop /home/samsam/.config/home-manager/home/dev/flake.nix#go";
      devpy = "nix develop /home/samsam/.config/home-manager/home/dev/flake.nix#python";
      devnode = "nix develop /home/samsam/.config/home-manager/home/dev/flake.nix#nodejs";
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
