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
    # TODO
    # shellAliases = {
    #  ll = "ls -lah";
    #  la = "ls -A";
    #  ".." = "cd ..";
    #  gs = "git status";
    #  rebuild = "sudo nixos-rebuild switch --flake ~/nixos";
    #};
    plugins = [
      # Enable a plugin (here grc for colorized command output) from nixpkgs
      { 
        name = "grc"; 
	      src = pkgs.fishPlugins.grc.src; 
      }
      # Manually packaging and enable a plugin
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
  # TODO
  # home.sessionVariables = {
  # JAVA_HOME = "${pkgs.jdk}";
  # PATH_TO_FX = "${pkgs.javaPackages.openjfx}/lib/openjfx";
  # };
}
